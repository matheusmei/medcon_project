import 'package:medcon_project_college/layers/domain/entities/account_entity.dart';

class AccountModel {
  final String firstName;
  final String lastName;
  final String age;
  final String email;
  final String gender;

  AccountModel({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.email,
    required this.gender,
  });

  factory AccountModel.fromMap(Map<String, dynamic> map) {
    return AccountModel(
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      age: map['age'] as String,
      email: map['email'] as String,
      gender: map['gender'] as String,
    );
  }

  Map<String, dynamic> toMap() => {
        'firstName': firstName,
        'lastName': lastName,
        'age': age,
        'email': email,
        'gender': gender,
      };

  AccountEntity toEntity() => AccountEntity(
      firstName: firstName,
      lastName: lastName,
      age: age,
      email: email,
      gender: gender,
      );
}
