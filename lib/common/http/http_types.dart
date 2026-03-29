enum ContentType { urlEncoded, json }
enum HttpMethod { get, post, put, patch, delete }
const successCodes = {200, 201, 202, 203, 204};

extension ContentTypeHeader on ContentType {
  String get contentHeader => switch (this) {
      ContentType.json => 'application/json; charset=utf-8',
      ContentType.urlEncoded => 'application/x-www-form-urlencoded',
    };
}
