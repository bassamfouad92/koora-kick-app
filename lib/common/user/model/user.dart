import 'package:koora_kick/common/extensions/string.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
sealed class Token with _$Token {
  const factory Token({
    String? raw,
    int? iat,
    int? exp,
    String? jti,
    User? user,
    String? aud,
    String? userType,
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}

@freezed
sealed class User with _$User {
  const User._();
  const factory User({
    @JsonKey(name: '_id') String? id,
    String? name,
    String? email,
    required String phone,
    bool? verified,
    bool? active,
    String? picture,
    @Default(0.0) double rating,
    @JsonKey(name: 'document_verification_status') String? documentVerificationStatus,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  String get firstName => name?.splitString ?? '';
  String get maskedPhone => '+${phone.maskPhone}';
  String get phoneNumber => phone;
  bool get isDocumentVerified => documentVerificationStatus?.toLowerCase().contains('verified') ?? false;
}