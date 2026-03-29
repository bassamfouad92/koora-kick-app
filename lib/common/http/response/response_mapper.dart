import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/http/response/api_response.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

class ResponseMapper {
  static Result<T> map<T>(
    Result<ApiResponse<dynamic>> response,
    DataMapper<T> mapper,
  ) =>
      response.when(
        success: (success) => Result.success(mapper.map(success.data)),
        error: Result.error,
      );
}