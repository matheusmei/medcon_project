
import 'package:equatable/equatable.dart';

import 'package:medcon_project_college/layers/domain/entities/account_entity.dart';
import 'package:medcon_project_college/layers/domain/helpers/resource.dart';

mixin GetRemoteAddAccountUsecase{
  Future<Resource<AccountEntity, dynamic>> call({
    required AddAccountUsecaseParams params,
    required String collectionReferencePath,
  });
}


class AddAccountUsecaseParams extends Equatable {
  final String firstName;
  final String lastName;
  final String age;
  final String email;
  final String password;
  final String gender;

  const AddAccountUsecaseParams({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.email,
    required this.password,
    required this.gender,
  });
  
  @override
  
  List<dynamic> get props => [
    firstName,
    lastName,
    age,
    email,
    password,
    gender,
  ];
}
