import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_error_item.freezed.dart';
part 'api_error_item.g.dart';

@freezed
sealed class APIErrorItem with _$APIErrorItem {
  const factory APIErrorItem({
    required String message,
    String? key,
    String? value,
    String? schema,
  }) = _APIErrorItem;

  factory APIErrorItem.fromJson(Map<String, dynamic> json) =>
      _$APIErrorItemFromJson(json);
}
