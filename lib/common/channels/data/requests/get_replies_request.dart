import 'package:koora_kick/common/channels/data/mappers/thread_mapper.dart';
import 'package:koora_kick/common/channels/domain/entities/reply_model.dart';
import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

/// `GET /threads/:id/replies` — oldest first.
class GetRepliesRequest extends HttpRequest<RepliesPage> {
  GetRepliesRequest({
    required this.threadId,
    this.page = 1,
    this.limit = 50,
  });

  final String threadId;
  final int page;
  final int limit;

  @override
  HttpMethod get method => HttpMethod.get;

  @override
  String get path => '/threads/$threadId/replies';

  @override
  Map<String, dynamic>? get queryParams => {
        'page': page,
        'limit': limit,
      };

  @override
  bool get requiresAuth => true;

  @override
  DataMapper<RepliesPage> get mapper => RepliesPageMapper();
}
