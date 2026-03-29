import 'package:koora_kick/common/countries/data/mappers/countries_mapper.dart';
import 'package:koora_kick/common/countries/data/models/countries_response.dart';
import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/http/request/request_body.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

class GetCountriesRequest extends HttpRequest<CountriesResponse> {

  @override
  HttpMethod get method => HttpMethod.get;

  @override
  String get path => '/countries';

  @override
  RequestBody? get body;

  @override
  bool get requiresAuth => false;

  @override
  DataMapper<CountriesResponse> get mapper => CountriesMapper();
}

