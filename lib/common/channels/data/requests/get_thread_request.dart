import 'package:koora_kick/common/channels/data/mappers/thread_mapper.dart';
import 'package:koora_kick/common/channels/domain/entities/thread_model.dart';
import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

/// `GET /threads/:id` — auth optional; with a token, includes `isLiked`.
class GetThreadRequest extends HttpRequest<ThreadModel> {
  GetThreadRequest({required this.threadId});

  final String threadId;

  @override
  HttpMethod get method => HttpMethod.get;

  @override
  String get path => '/threads/$threadId';

  @override
  bool get requiresAuth => true;

  @override
  DataMapper<ThreadModel> get mapper => ThreadMapper();
}
