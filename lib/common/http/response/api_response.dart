import 'package:koora_kick/common/http/api_error_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse({
    required int status,
    required String message,
    T? data,
    @Default([]) List<APIErrorItem> errors,
    @JsonKey(name: 'correlation_id') String? correlationId,
  }) = _ApiResponse<T>;

  factory ApiResponse.fromJson(
      Map<String, dynamic> json,
      T Function(Object?) fromJsonT,
      ) =>
      _$ApiResponseFromJson(json, fromJsonT);
}