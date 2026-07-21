import 'package:koora_kick/common/channels/data/mappers/thread_mapper.dart';
import 'package:koora_kick/common/channels/domain/entities/thread_model.dart';
import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/http/request/request_body.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

/// `POST /channels/:channelId/threads` — channel member only. Hashtags are
/// normalized server-side (`#` stripped, lowercased, deduplicated).
class CreateThreadRequest extends HttpRequest<ThreadModel> {
  CreateThreadRequest({
    required this.channelId,
    required this.title,
    this.description,
    this.hashtags = const [],
  });

  final String channelId;
  final String title;
  final String? description;
  final List<String> hashtags;

  @override
  HttpMethod get method => HttpMethod.post;

  @override
  String get path => '/channels/$channelId/threads';

  @override
  RequestBody get body => _CreateThreadBody(
        title: title,
        description: description,
        hashtags: hashtags,
      );

  @override
  DataMapper<ThreadModel> get mapper => ThreadMapper();
}

class _CreateThreadBody implements RequestBody {
  _CreateThreadBody({required this.title, this.description, required this.hashtags});

  final String title;
  final String? description;
  final List<String> hashtags;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        if (description != null && description!.isNotEmpty) 'description': description,
        if (hashtags.isNotEmpty) 'hashtags': hashtags,
      };
}
