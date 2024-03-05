import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:poc_grpc_front/generated/ticket.pb.dart';
import 'package:poc_grpc_front/generated/ticket.pbgrpc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'gRPC Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final channel = ClientChannel(
    '192.168.0.37',
    port: 5000,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  late final TicketServiceClient client;
  final _messagesController = StreamController<CreateTicketResponse>();
  final List<CreateTicketResponse> _messages = [];

  @override
  void initState() {
    super.initState();
    client = TicketServiceClient(channel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('gRPC Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final response = await client.createTikect(
                  CreateTicketRequest()
                    ..name = 'John Jones'
                    ..email = 'john@example.com'
                    ..ticket = 'Sample ticket',
                );
                print('Response ID: ${response.id}');
              },
              child: Text('Create Ticket'),
            ),
            ElevatedButton(
              onPressed: _sendStreamMessages,
              child: Text('Send Stream Messages'),
            ),
            ElevatedButton(
              onPressed: _uploadFile,
              child: Text('Upload File'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final message = _messages[index];
                  return ListTile(
                    title: Text(message.name),
                    subtitle: Text(message.email),
                    trailing: Text(message.ticket),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _sendStreamMessages() async {
    final requestStream = StreamController<CreateTicketRequest>();
    final responseStream = client.bidiHello(requestStream.stream);

    responseStream.listen((response) {
      print('Received response: ${response}');
      setState(() {
        _messagesController.add(response);
        _messages.add(response);
      });
    });

    requestStream.add(
      CreateTicketRequest()
        ..name = 'Alice'
        ..email = 'alice@example.com'
        ..ticket = 'Stream ticket 1',
    );

    await Future.delayed(Duration(seconds: 1));

    requestStream.add(
      CreateTicketRequest()
        ..name = 'Bob'
        ..email = 'bob@example.com'
        ..ticket = 'Stream ticket 2',
    );

    await Future.delayed(Duration(seconds: 1));

    await requestStream.close();
  }

  void _uploadFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result != null) {
      final path = result.files.single.path!;
      final fileBytes = File(path).readAsBytesSync();

      final fileStream = Stream.fromIterable([FileChunk()..chunkData = fileBytes]);

      try {
        final response = await client.uploadFile(fileStream);
        print('File upload response: ${response.message}');
      } catch (e) {
        print('Error uploading file: $e');
      }
    }
  }

  @override
  void dispose() {
    channel.shutdown();
    _messagesController.close();
    super.dispose();
  }
}
