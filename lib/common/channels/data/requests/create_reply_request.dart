import 'package:koora_kick/common/channels/data/mappers/thread_mapper.dart';
import 'package:koora_kick/common/channels/domain/entities/reply_model.dart';
import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/http/request/request_body.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

/// `POST /threads/:id/replies` — channel member, approved thread only.
class CreateReplyRequest extends HttpRequest<ReplyModel> {
  CreateReplyRequest({required this.threadId, required this.text});

  final String threadId;
  final String text;

  @override
  HttpMethod get method => HttpMethod.post;

  @override
  String get path => '/threads/$threadId/replies';

  @override
  RequestBody get body => _CreateReplyBody(text);

  @override
  DataMapper<ReplyModel> get mapper => ReplyMapper();
}

class _CreateReplyBody implements RequestBody {
  _CreateReplyBody(this.text);

  final String text;

  @override
  Map<String, dynamic> toJson() => {'text': text};
}
