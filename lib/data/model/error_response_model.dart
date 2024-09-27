import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error_response_model.g.dart';

@JsonSerializable()
class ErrorResponseModel extends Equatable {
  final dynamic? status;
  final List<dynamic>? message;


  const ErrorResponseModel({
     this.status,
     this.message
  });

  @override
  List<Object?> get props => [status, message];

  ErrorResponseModel copyWith({String? status,  List<dynamic>? message}) {
    return ErrorResponseModel(
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }

  @override
  factory ErrorResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ErrorResponseModelToJson(this);
}
