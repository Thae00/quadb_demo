import 'package:json_annotation/json_annotation.dart';

import 'movie_model.dart';

part 'score_model.g.dart';
//MemberModel
@JsonSerializable()
class ScoreModel {
  final double? score;
  final MovieModel? show;

  ScoreModel({
    this.score,
    this.show,
  });

  factory ScoreModel.fromJson(Map<String, dynamic> json) =>
      _$ScoreModelFromJson(json);

  Map<String, dynamic> toJson() => _$ScoreModelToJson(this);
}
