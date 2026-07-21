import 'package:koora_kick/common/channels/data/mappers/thread_mapper.dart';
import 'package:koora_kick/common/channels/domain/entities/hashtag_model.dart';
import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

/// `GET /hashtags?q=` (public) — tag autocomplete, popular first.
class GetHashtagsRequest extends HttpRequest<List<HashtagModel>> {
  GetHashtagsRequest({this.query});

  final String? query;

  @override
  HttpMethod get method => HttpMethod.get;

  @override
  String get path => '/hashtags';

  @override
  Map<String, dynamic>? get queryParams => {
        if (query != null && query!.isNotEmpty) 'q': query,
      };

  @override
  bool get requiresAuth => false;

  @override
  DataMapper<List<HashtagModel>> get mapper => HashtagListMapper();
}
