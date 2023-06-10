import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String failure;

  const Failure(this.failure);

  @override
  List<Object> get props => [failure];
}
