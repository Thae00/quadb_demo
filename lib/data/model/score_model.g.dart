// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScoreModel _$ScoreModelFromJson(Map<String, dynamic> json) => ScoreModel(
  score: json['score'] as double?,
  show: json['show'] == null
      ? null
      : MovieModel.fromJson(json['show'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScoreModelToJson(ScoreModel instance) =>
    <String, dynamic>{
      'score': instance.score,
      'show': instance.show,
    };
