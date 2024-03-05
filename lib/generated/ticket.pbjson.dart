//
//  Generated code. Do not modify.
//  source: ticket.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use ticketDescriptor instead')
const Ticket$json = {
  '1': 'Ticket',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'ticket', '3': 3, '4': 1, '5': 9, '10': 'ticket'},
  ],
};

/// Descriptor for `Ticket`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ticketDescriptor = $convert.base64Decode(
    'CgZUaWNrZXQSEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgVlbWFpbBgCIAEoCVIFZW1haWwSFgoGdG'
    'lja2V0GAMgASgJUgZ0aWNrZXQ=');

@$core.Deprecated('Use createTicketRequestDescriptor instead')
const CreateTicketRequest$json = {
  '1': 'CreateTicketRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'ticket', '3': 3, '4': 1, '5': 9, '10': 'ticket'},
  ],
};

/// Descriptor for `CreateTicketRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTicketRequestDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVUaWNrZXRSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSFAoFZW1haWwYAiABKA'
    'lSBWVtYWlsEhYKBnRpY2tldBgDIAEoCVIGdGlja2V0');

@$core.Deprecated('Use createTicketResponseDescriptor instead')
const CreateTicketResponse$json = {
  '1': 'CreateTicketResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    {'1': 'ticket', '3': 4, '4': 1, '5': 9, '10': 'ticket'},
  ],
};

/// Descriptor for `CreateTicketResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTicketResponseDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVUaWNrZXRSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbm'
    'FtZRIUCgVlbWFpbBgDIAEoCVIFZW1haWwSFgoGdGlja2V0GAQgASgJUgZ0aWNrZXQ=');

@$core.Deprecated('Use fileChunkDescriptor instead')
const FileChunk$json = {
  '1': 'FileChunk',
  '2': [
    {'1': 'chunk_data', '3': 1, '4': 1, '5': 12, '10': 'chunkData'},
  ],
};

/// Descriptor for `FileChunk`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileChunkDescriptor = $convert.base64Decode(
    'CglGaWxlQ2h1bmsSHQoKY2h1bmtfZGF0YRgBIAEoDFIJY2h1bmtEYXRh');

@$core.Deprecated('Use uploadStatusDescriptor instead')
const UploadStatus$json = {
  '1': 'UploadStatus',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `UploadStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadStatusDescriptor = $convert.base64Decode(
    'CgxVcGxvYWRTdGF0dXMSGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIYCgdtZXNzYWdlGAIgAS'
    'gJUgdtZXNzYWdl');

