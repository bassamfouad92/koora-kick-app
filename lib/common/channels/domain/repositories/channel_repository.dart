import 'package:koora_kick/common/channels/domain/entities/channel_model.dart';
import 'package:koora_kick/common/channels/domain/entities/join_channels_batch_result.dart';
import 'package:koora_kick/common/channels/data/requests/get_channels_request.dart';
import 'package:koora_kick/common/http/response/result.dart';

abstract interface class ChannelRepository {
  Future<Result<List<ChannelModel>>> getChannels({ChannelType? type});
  Future<Result<ChannelModel>> getChannel(String channelId);
  Future<Result<ChannelModel>> joinChannel(String channelId);
  Future<Result<void>> leaveChannel(String channelId);
  Future<Result<JoinChannelsBatchResult>> joinChannelsBatch(
    List<String> channelIds,
  );
}
