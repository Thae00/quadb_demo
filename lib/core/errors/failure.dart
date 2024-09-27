

abstract class Failure {
  const Failure();

  @override
  List<Object> get props => [];
}

class AuthFail extends Failure {}

class StatusFail extends Failure {}

class ServerFailure extends Failure {}

class ConnectionFailure extends Failure {}

class LogicFailure extends Failure {
  final String msg;
  const LogicFailure({required this.msg});
}

class RequestFailure extends Failure {
  final List<RestModel> models;

  const RequestFailure(this.models);
}

abstract class RestModel {
  factory RestModel.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError();
  }

  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
