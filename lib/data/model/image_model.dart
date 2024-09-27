import 'package:json_annotation/json_annotation.dart';

part 'image_model.g.dart';
//MemberModel
@JsonSerializable()
class ImageModel {
  String? medium;
  String? original;

  ImageModel({
    this.medium,
    this.original,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}
