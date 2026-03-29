import 'package:koora_kick/common/countries/domain/entities/country_model.dart';
import 'package:koora_kick/common/countries/data/models/countries_response.dart';
import 'package:koora_kick/common/widgets/image/app_image.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';

class LocalCountriesMapper {
  static CountryModel fromLib(CountryWithPhoneCode lib) => CountryModel(
        name: lib.countryName ?? 'Unknown',
        flag: '',
        code: _rawCode(lib.phoneCode),
        countryCode: lib.countryCode,
        exampleNumberMobileNational: lib.exampleNumberMobileNational,
        exampleNumberFixedLineNational: lib.exampleNumberFixedLineNational,
        phoneMaskMobileNational: lib.phoneMaskMobileNational,
        phoneMaskFixedLineNational: lib.phoneMaskFixedLineNational,
        exampleNumberMobileInternational: lib.exampleNumberMobileInternational,
        exampleNumberFixedLineInternational: lib.exampleNumberFixedLineInternational,
        phoneMaskMobileInternational: lib.phoneMaskMobileInternational,
        phoneMaskFixedLineInternational: lib.phoneMaskFixedLineInternational,
      );

  static CountryModel fromServer(CountryData server) => CountryModel(
        id: server.id ?? '',
        name: server.name ?? '',
        flag: server.flag ?? '',
        code: _rawCode(server.phoneCode ?? ''),
        countryCode: server.code ?? '',
        imageType: ImageType.network,
      );

  static String _rawCode(String code) => code.replaceAll('+', '').trim();
}
