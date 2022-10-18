import 'package:equatable/equatable.dart';

class AccountEntity extends Equatable {
  final String firstName;
  final String lastName;
  final String age;
  final String email;
  final String gender;

  const AccountEntity({ 
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.email,
    required this.gender,
   });

    factory AccountEntity.fromMap(Map<String, dynamic> map) {
    return AccountEntity(
      firstName: map['firstName'].toString(),
      lastName: map['lastName'].toString(),
      age: map['age'].toString(),
      email: map['email'].toString(),
      gender: map['gender'].toString(),
    );
  }
  
  Map<String, dynamic> toMap(AccountEntity entity) {
    return {
      'firstName': entity.firstName,
      'lastName': entity.lastName,
      'age': entity.age,
      'email': entity.email,
      'gender': entity.gender
    };
  }

  @override
  List<dynamic> get props => [
        firstName,
        lastName,
        age,
        email,
        gender,
      ];
 
}
