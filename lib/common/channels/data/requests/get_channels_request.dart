import 'package:koora_kick/common/channels/data/mappers/channel_mapper.dart';
import 'package:koora_kick/common/channels/domain/entities/channel_model.dart';
import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

enum ChannelType {
  club('club'),
  event('event'),
  federation('federation');

  const ChannelType(this.id);
  final String id;
}

class GetChannelsRequest extends HttpRequest<List<ChannelModel>> {
  GetChannelsRequest({this.type, this.countryId, this.cityId});

  final ChannelType? type;
  final String? countryId;
  final String? cityId;

  @override
  HttpMethod get method => HttpMethod.get;

  @override
  String get path => '/channels';

  @override
  Map<String, dynamic>? get queryParams => {
        if (type != null) 'type': type!.id,
        if (countryId != null) 'countryId': countryId,
        if (cityId != null) 'cityId': cityId,
      };

  // Auth is optional on the backend; sending the token when available
  // fills in the `isJoined` flag.
  @override
  bool get requiresAuth => true;

  @override
  DataMapper<List<ChannelModel>> get mapper => ChannelListMapper();
}
