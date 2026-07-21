import 'package:koora_kick/common/channels/data/mappers/thread_mapper.dart';
import 'package:koora_kick/common/channels/domain/entities/thread_model.dart';
import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

/// `GET /channels/:channelId/threads` — approved threads plus the
/// requester's own pending/rejected ones, newest first.
class GetThreadsRequest extends HttpRequest<ThreadsPage> {
  GetThreadsRequest({
    required this.channelId,
    this.page = 1,
    this.limit = 20,
  });

  final String channelId;
  final int page;
  final int limit;

  @override
  HttpMethod get method => HttpMethod.get;

  @override
  String get path => '/channels/$channelId/threads';

  @override
  Map<String, dynamic>? get queryParams => {
        'page': page,
        'limit': limit,
      };

  // Auth is optional; sending the token when available surfaces the
  // requester's own pending/rejected threads too.
  @override
  bool get requiresAuth => true;

  @override
  DataMapper<ThreadsPage> get mapper => ThreadsPageMapper();
}
