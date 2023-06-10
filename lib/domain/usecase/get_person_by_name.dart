import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../base/exception/failure.dart';
import '../../base/usecase/base_usecase.dart';
import '../entity/person.dart';
import '../repository/repository.dart';

class GetPersonByName extends BaseUseCase<Person, PersonQuery> {
  final Repository repository;

  GetPersonByName(this.repository);

  @override
  Future<Either<Failure, Person>> call([PersonQuery? params]) {
    return repository.getPersonByName(params?.query ?? '');
  }
}

class PersonQuery extends Equatable {
  final String query;

  const PersonQuery(this.query);

  @override
  List<Object?> get props => [id];
}
