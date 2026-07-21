import 'package:koora_kick/common/channels/data/requests/get_channel_request.dart';
import 'package:koora_kick/common/channels/data/requests/get_channels_request.dart';
import 'package:koora_kick/common/channels/data/requests/join_channel_request.dart';
import 'package:koora_kick/common/channels/data/requests/join_channels_batch_request.dart';
import 'package:koora_kick/common/channels/data/requests/leave_channel_request.dart';
import 'package:koora_kick/common/channels/domain/entities/channel_model.dart';
import 'package:koora_kick/common/channels/domain/entities/join_channels_batch_result.dart';
import 'package:koora_kick/common/channels/domain/repositories/channel_repository.dart';
import 'package:koora_kick/common/http/network_client.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final channelRepositoryProvider =
    Provider<ChannelRepository>(ChannelRepositoryImpl.new);

class ChannelRepositoryImpl implements ChannelRepository {
  ChannelRepositoryImpl(this._ref);

  final Ref _ref;

  late final _networkClient = _ref.read(networkProvider);

  @override
  Future<Result<List<ChannelModel>>> getChannels({ChannelType? type}) async {
    final response =
        await _networkClient.execute(GetChannelsRequest(type: type));
    return response.when(
      success: (channels) => Result.success(channels),
      error: (exception) => Result.error(exception),
    );
  }

  @override
  Future<Result<ChannelModel>> getChannel(String channelId) async {
    final response =
        await _networkClient.execute(GetChannelRequest(channelId: channelId));
    return response.when(
      success: (channel) => Result.success(channel),
      error: (exception) => Result.error(exception),
    );
  }

  @override
  Future<Result<ChannelModel>> joinChannel(String channelId) async {
    final response =
        await _networkClient.execute(JoinChannelRequest(channelId: channelId));
    return response.when(
      success: (channel) => Result.success(channel),
      error: (exception) => Result.error(exception),
    );
  }

  @override
  Future<Result<void>> leaveChannel(String channelId) async {
    final response = await _networkClient
        .execute(LeaveChannelRequest(channelId: channelId));
    return response.when(
      success: (_) => const Result.success(null),
      error: (exception) => Result.error(exception),
    );
  }

  /// The backend caps join-batch at 20 ids per call, so larger selections
  /// are sent in chunks and the counts are merged.
  static const _joinBatchLimit = 20;

  @override
  Future<Result<JoinChannelsBatchResult>> joinChannelsBatch(
    List<String> channelIds,
  ) async {
    if (channelIds.isEmpty) {
      return const Result.success(JoinChannelsBatchResult());
    }

    var merged = const JoinChannelsBatchResult();
    for (var i = 0; i < channelIds.length; i += _joinBatchLimit) {
      final chunk = channelIds.sublist(
        i,
        (i + _joinBatchLimit).clamp(0, channelIds.length),
      );
      final response = await _networkClient
          .execute(JoinChannelsBatchRequest(channelIds: chunk));

      final error = response.when<Result<JoinChannelsBatchResult>?>(
        success: (result) {
          merged = JoinChannelsBatchResult(
            joinedCount: merged.joinedCount + result.joinedCount,
            skippedCount: merged.skippedCount + result.skippedCount,
          );
          return null;
        },
        error: (exception) => Result.error(exception),
      );
      if (error != null) {
        return error;
      }
    }
    return Result.success(merged);
  }
}
