// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_marker_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MarkerScreening _$MarkerScreeningFromJson(Map<String, dynamic> json) =>
    _MarkerScreening(
      title: json['title'] as String? ?? '',
      startsAt: json['startsAt'] == null
          ? null
          : DateTime.parse(json['startsAt'] as String),
      nowShowing: json['nowShowing'] as bool? ?? false,
    );

Map<String, dynamic> _$MarkerScreeningToJson(_MarkerScreening instance) =>
    <String, dynamic>{
      'title': instance.title,
      'startsAt': instance.startsAt?.toIso8601String(),
      'nowShowing': instance.nowShowing,
    };

_MapMarkerModel _$MapMarkerModelFromJson(Map<String, dynamic> json) =>
    _MapMarkerModel(
      id: json['id'] as String,
      name: json['name'] as String,
      type:
          $enumDecodeNullable(
            _$MapMarkerTypeEnumMap,
            json['type'],
            unknownValue: MapMarkerType.unknown,
          ) ??
          MapMarkerType.unknown,
      description: json['description'] as String?,
      address: json['address'] as String? ?? '',
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      venueType: json['venueType'] as String?,
      indoor: json['indoor'] as bool? ?? false,
      rating: (json['rating'] as num?)?.toDouble(),
      photo: json['photo'] as String?,
      cityId: json['cityId'] as String?,
      distanceKm: (json['distanceKm'] as num?)?.toDouble(),
      screening: json['screening'] == null
          ? null
          : MarkerScreening.fromJson(json['screening'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MapMarkerModelToJson(_MapMarkerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$MapMarkerTypeEnumMap[instance.type]!,
      'description': instance.description,
      'address': instance.address,
      'lat': instance.lat,
      'lng': instance.lng,
      'venueType': instance.venueType,
      'indoor': instance.indoor,
      'rating': instance.rating,
      'photo': instance.photo,
      'cityId': instance.cityId,
      'distanceKm': instance.distanceKm,
      'screening': instance.screening,
    };

const _$MapMarkerTypeEnumMap = {
  MapMarkerType.stadium: 'stadium',
  MapMarkerType.screening: 'screening',
  MapMarkerType.meetup: 'meetup',
  MapMarkerType.unknown: 'unknown',
};
