import 'package:koora_kick/common/channels/data/mappers/thread_mapper.dart';
import 'package:koora_kick/common/channels/domain/entities/hashtag_model.dart';
import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

/// `POST`/`DELETE /threads/:id/like` and `POST`/`DELETE /replies/:id/like`
/// share the same `{ likeCount, isLiked }` response shape.
class LikeRequest extends HttpRequest<LikeResult> {
  LikeRequest({
    required String targetId,
    required LikeTarget target,
    required this.like,
  })  : _path = '${target.path}/$targetId/like';

  final String _path;
  final bool like;

  @override
  HttpMethod get method => like ? HttpMethod.post : HttpMethod.delete;

  @override
  String get path => _path;

  @override
  DataMapper<LikeResult> get mapper => LikeResultMapper();
}

enum LikeTarget {
  thread('/threads'),
  reply('/replies');

  const LikeTarget(this.path);
  final String path;
}
