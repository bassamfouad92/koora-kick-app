import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_model.freezed.dart';
part 'channel_model.g.dart';

@freezed
sealed class ChannelModel with _$ChannelModel {
  const factory ChannelModel({
    required String id,
    required String name,
    String? slug,
    String? description,
    String? logo,
    String? type,
    String? countryId,
    String? cityId,
    @Default(0) int memberCount,
    @Default(false) bool isJoined,
    @Default(false) bool isSelected,
  }) = _ChannelModel;

  factory ChannelModel.fromJson(Map<String, dynamic> json) =>
      _$ChannelModelFromJson(json);
}
