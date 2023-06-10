import 'package:clean_arcitecture/base/exception/failure.dart';
import 'package:clean_arcitecture/base/usecase/base_usecase.dart';
import 'package:clean_arcitecture/domain/repository/repository.dart';
import 'package:dartz/dartz.dart';

import '../entity/person.dart';

class GetAllPersons extends BaseUseCase<Iterable<Person>, dynamic> {
  final Repository repository;

  GetAllPersons(this.repository);

  @override
  Future<Either<Failure, Iterable<Person>>> call([params]) async {
    return await repository.getPersonsAll();
  }
}
