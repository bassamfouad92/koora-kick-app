import 'package:koora_kick/common/channels/data/mappers/channel_mapper.dart';
import 'package:koora_kick/common/channels/domain/entities/join_channels_batch_result.dart';
import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/http/request/request_body.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

/// `POST /channels/join-batch` — onboarding: join several channels in one
/// call. Idempotent; the backend accepts 1–20 UUIDs per call.
class JoinChannelsBatchRequest extends HttpRequest<JoinChannelsBatchResult> {
  JoinChannelsBatchRequest({required this.channelIds});

  final List<String> channelIds;

  @override
  HttpMethod get method => HttpMethod.post;

  @override
  String get path => '/channels/join-batch';

  @override
  RequestBody get body => _JoinChannelsBatchBody(channelIds);

  @override
  DataMapper<JoinChannelsBatchResult> get mapper =>
      JoinChannelsBatchResultMapper();
}

class _JoinChannelsBatchBody implements RequestBody {
  _JoinChannelsBatchBody(this.channelIds);

  final List<String> channelIds;

  @override
  Map<String, dynamic> toJson() => {'channelIds': channelIds};
}
