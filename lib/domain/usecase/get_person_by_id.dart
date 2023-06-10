import 'package:clean_arcitecture/base/exception/failure.dart';
import 'package:clean_arcitecture/base/usecase/base_usecase.dart';
import 'package:clean_arcitecture/domain/repository/repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/person.dart';

class GetPersonById extends BaseUseCase<Person, PersonID> {
  final Repository repository;

  GetPersonById(this.repository);

  @override
  Future<Either<Failure, Person>> call([PersonID? params]) {
    return repository.getPersonById(params?.id ?? 0);
  }
}

class PersonID extends Equatable {
  final int id;

  const PersonID(this.id);

  @override
  List<Object?> get props => [id];
}
