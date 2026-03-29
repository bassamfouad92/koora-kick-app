import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

@freezed
sealed class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    @JsonKey(name: '_id') required String id,
    String? picture,
    required double rating,
    @JsonKey(name: 'document_verification_status') required String documentVerificationStatus,
    required String phone,
    required String name,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}
