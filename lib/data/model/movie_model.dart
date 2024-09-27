import 'package:json_annotation/json_annotation.dart';
import 'package:qadb/data/model/image_model.dart';

import 'rating_model.dart';

part 'movie_model.g.dart';
//MemberModel
@JsonSerializable()
class MovieModel {
  int? id;
  String? url;
  String? name;
  String? type;
  String? language;
  List<String>? genres;
  String? status;
  int? runtime;
  int? averageRuntime;
  String? premiered;
  dynamic ended;
  String? officialSite;
//  Schedule? schedule;
  RatingModel? rating;
  int? weight;
//  Network? network;
  dynamic webChannel;
  dynamic dvdCountry;
//  Externals? externals;
  ImageModel? image;
  String? summary;
  int? updated;

  MovieModel({
    this.id,
    this.url,
    this.name,
    this.type,
    this.language,
    this.genres,
    this.status,
    this.runtime,
    this.averageRuntime,
    this.premiered,
    this.ended,
    this.officialSite,
    // this.schedule,
     this.rating,
    // this.network,
    // this.externals,
    this.weight,
    this.webChannel,
    this.dvdCountry,
    this.image,
    this.summary,
    this.updated,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieModelToJson(this);
}
