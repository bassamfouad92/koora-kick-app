import 'package:koora_kick/common/channels/data/mappers/channel_mapper.dart';
import 'package:koora_kick/common/channels/domain/entities/channel_model.dart';
import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

/// `GET /channels/:id` — auth optional; `isJoined` present only with a token.
class GetChannelRequest extends HttpRequest<ChannelModel> {
  GetChannelRequest({required this.channelId});

  final String channelId;

  @override
  HttpMethod get method => HttpMethod.get;

  @override
  String get path => '/channels/$channelId';

  @override
  bool get requiresAuth => true;

  @override
  DataMapper<ChannelModel> get mapper => ChannelMapper();
}
