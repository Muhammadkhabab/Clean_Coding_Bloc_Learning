// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_show_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TVShowModelImpl _$$TVShowModelImplFromJson(Map<String, dynamic> json) =>
    _$TVShowModelImpl(
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      tv_shows:
          (json['tv_shows'] as List<dynamic>)
              .map((e) => TVShow.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$TVShowModelImplToJson(_$TVShowModelImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'pages': instance.pages,
      'tv_shows': instance.tv_shows,
    };

_$TVShowImpl _$$TVShowImplFromJson(Map<String, dynamic> json) => _$TVShowImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  permalink: json['permalink'] as String,
  start_date: json['start_date'] as String,
  end_date: json['end_date'] as String?,
  country: json['country'] as String,
  network: json['network'] as String,
  status: json['status'] as String,
  image_thumbnail_path: json['image_thumbnail_path'] as String,
);

Map<String, dynamic> _$$TVShowImplToJson(_$TVShowImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'permalink': instance.permalink,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'country': instance.country,
      'network': instance.network,
      'status': instance.status,
      'image_thumbnail_path': instance.image_thumbnail_path,
    };
