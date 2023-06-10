import 'dart:async';

import 'package:clean_arcitecture/domain/entity/person.dart';
import 'package:dartz/dartz.dart';

import '../../base/exception/failure.dart';

abstract class Repository {
  Future<Either<Failure, Iterable<Person>>> getPersonsAll();

  Future<Either<Failure, Person>> getPersonById(int id);

  Future<Either<Failure, Person>> getPersonByName(String query);
}
