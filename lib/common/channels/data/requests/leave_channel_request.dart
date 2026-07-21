import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

/// `DELETE /channels/:id/join` — leave the channel.
class LeaveChannelRequest extends HttpRequest<void> {
  LeaveChannelRequest({required this.channelId});

  final String channelId;

  @override
  HttpMethod get method => HttpMethod.delete;

  @override
  String get path => '/channels/$channelId/join';

  @override
  DataMapper<void> get mapper => _VoidMapper();
}

class _VoidMapper implements DataMapper<void> {
  @override
  void map(dynamic data) {}
}
