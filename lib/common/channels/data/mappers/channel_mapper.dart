import 'package:koora_kick/common/channels/domain/entities/channel_model.dart';
import 'package:koora_kick/common/channels/domain/entities/join_channels_batch_result.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

class ChannelListMapper implements DataMapper<List<ChannelModel>> {
  @override
  List<ChannelModel> map(dynamic data) => (data as List)
      .map((json) => ChannelModel.fromJson(json as Map<String, dynamic>))
      .toList();
}

class ChannelMapper implements DataMapper<ChannelModel> {
  @override
  ChannelModel map(dynamic data) =>
      ChannelModel.fromJson(data as Map<String, dynamic>);
}

class JoinChannelsBatchResultMapper
    implements DataMapper<JoinChannelsBatchResult> {
  @override
  JoinChannelsBatchResult map(dynamic data) =>
      JoinChannelsBatchResult.fromJson(data as Map<String, dynamic>);
}
