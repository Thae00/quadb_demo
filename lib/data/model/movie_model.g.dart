// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
      id: (json['id'] as num?)?.toInt(),
      url: json['url'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      language: json['language'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      status: json['status'] as String?,
      runtime: (json['runtime'] as num?)?.toInt(),
      averageRuntime: (json['averageRuntime'] as num?)?.toInt(),
      premiered: json['premiered'] as String?,
      ended: json['ended'],
      officialSite: json['officialSite'] as String?,
      weight: (json['weight'] as num?)?.toInt(),
      webChannel: json['webChannel'],
      dvdCountry: json['dvdCountry'],
      image: json['image'] == null
          ? null
          : ImageModel.fromJson(json['image'] as Map<String, dynamic>),
      rating: json['rating'] == null
          ? null
          : RatingModel.fromJson(json['rating'] as Map<String, dynamic>),
      summary: json['summary'] as String?,
      updated: (json['updated'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'type': instance.type,
      'language': instance.language,
      'genres': instance.genres,
      'status': instance.status,
      'runtime': instance.runtime,
      'averageRuntime': instance.averageRuntime,
      'premiered': instance.premiered,
      'ended': instance.ended,
      'officialSite': instance.officialSite,
      'weight': instance.weight,
      'webChannel': instance.webChannel,
      'dvdCountry': instance.dvdCountry,
      'image': instance.image,
          'rating': instance.rating,
      'summary': instance.summary,
      'updated': instance.updated,
    };
