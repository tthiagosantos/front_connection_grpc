//
//  Generated code. Do not modify.
//  source: ticket.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'ticket.pb.dart' as $0;

export 'ticket.pb.dart';

@$pb.GrpcServiceName('poc.TicketService')
class TicketServiceClient extends $grpc.Client {
  static final _$createTikect = $grpc.ClientMethod<$0.CreateTicketRequest, $0.CreateTicketResponse>(
      '/poc.TicketService/CreateTikect',
      ($0.CreateTicketRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateTicketResponse.fromBuffer(value));
  static final _$bidiHello = $grpc.ClientMethod<$0.CreateTicketRequest, $0.CreateTicketResponse>(
      '/poc.TicketService/BidiHello',
      ($0.CreateTicketRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateTicketResponse.fromBuffer(value));
  static final _$lotsOfGreetings = $grpc.ClientMethod<$0.CreateTicketRequest, $0.CreateTicketResponse>(
      '/poc.TicketService/LotsOfGreetings',
      ($0.CreateTicketRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateTicketResponse.fromBuffer(value));
  static final _$uploadFile = $grpc.ClientMethod<$0.FileChunk, $0.UploadStatus>(
      '/poc.TicketService/UploadFile',
      ($0.FileChunk value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UploadStatus.fromBuffer(value));

  TicketServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateTicketResponse> createTikect($0.CreateTicketRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTikect, request, options: options);
  }

  $grpc.ResponseStream<$0.CreateTicketResponse> bidiHello($async.Stream<$0.CreateTicketRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$bidiHello, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateTicketResponse> lotsOfGreetings($async.Stream<$0.CreateTicketRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$lotsOfGreetings, request, options: options).single;
  }

  $grpc.ResponseFuture<$0.UploadStatus> uploadFile($async.Stream<$0.FileChunk> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$uploadFile, request, options: options).single;
  }
}

@$pb.GrpcServiceName('poc.TicketService')
abstract class TicketServiceBase extends $grpc.Service {
  $core.String get $name => 'poc.TicketService';

  TicketServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateTicketRequest, $0.CreateTicketResponse>(
        'CreateTikect',
        createTikect_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateTicketRequest.fromBuffer(value),
        ($0.CreateTicketResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateTicketRequest, $0.CreateTicketResponse>(
        'BidiHello',
        bidiHello,
        true,
        true,
        ($core.List<$core.int> value) => $0.CreateTicketRequest.fromBuffer(value),
        ($0.CreateTicketResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateTicketRequest, $0.CreateTicketResponse>(
        'LotsOfGreetings',
        lotsOfGreetings,
        true,
        false,
        ($core.List<$core.int> value) => $0.CreateTicketRequest.fromBuffer(value),
        ($0.CreateTicketResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FileChunk, $0.UploadStatus>(
        'UploadFile',
        uploadFile,
        true,
        false,
        ($core.List<$core.int> value) => $0.FileChunk.fromBuffer(value),
        ($0.UploadStatus value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateTicketResponse> createTikect_Pre($grpc.ServiceCall call, $async.Future<$0.CreateTicketRequest> request) async {
    return createTikect(call, await request);
  }

  $async.Future<$0.CreateTicketResponse> createTikect($grpc.ServiceCall call, $0.CreateTicketRequest request);
  $async.Stream<$0.CreateTicketResponse> bidiHello($grpc.ServiceCall call, $async.Stream<$0.CreateTicketRequest> request);
  $async.Future<$0.CreateTicketResponse> lotsOfGreetings($grpc.ServiceCall call, $async.Stream<$0.CreateTicketRequest> request);
  $async.Future<$0.UploadStatus> uploadFile($grpc.ServiceCall call, $async.Stream<$0.FileChunk> request);
}
