import 'package:koora_kick/common/widgets/image/app_image.dart';
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@freezed
sealed class CountryModel with _$CountryModel {
  const CountryModel._();

  const factory CountryModel({
    required String name,
    required String flag,
    required String code,
    required String countryCode,
    @Default('') String id,
    @Default(ImageType.asset) ImageType imageType,
    String? exampleNumberMobileNational,
    String? exampleNumberFixedLineNational,
    String? phoneMaskMobileNational,
    String? phoneMaskFixedLineNational,
    String? exampleNumberMobileInternational,
    String? exampleNumberFixedLineInternational,
    String? phoneMaskMobileInternational,
    String? phoneMaskFixedLineInternational,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);

  static const defaultCountry = CountryModel(
      name: 'Egypt',
      flag: AppAssets.egyptFlag,
      code: '20',
      countryCode: 'EG',
      exampleNumberMobileNational: '010 01234567');

  String get displayCode => '+$code';
}
