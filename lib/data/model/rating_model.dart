
import 'package:json_annotation/json_annotation.dart';

part 'rating_model.g.dart';
//MemberModel
@JsonSerializable()
class RatingModel {
  dynamic average;

  RatingModel({
    this.average,
  });

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);

  Map<String, dynamic> toJson() => _$RatingModelToJson(this);
}