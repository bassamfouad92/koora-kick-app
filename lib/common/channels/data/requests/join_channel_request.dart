import 'package:koora_kick/common/channels/data/mappers/channel_mapper.dart';
import 'package:koora_kick/common/channels/domain/entities/channel_model.dart';
import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

class JoinChannelRequest extends HttpRequest<ChannelModel> {
  JoinChannelRequest({required this.channelId});

  final String channelId;

  @override
  HttpMethod get method => HttpMethod.post;

  @override
  String get path => '/channels/$channelId/join';

  @override
  DataMapper<ChannelModel> get mapper => ChannelMapper();
}
