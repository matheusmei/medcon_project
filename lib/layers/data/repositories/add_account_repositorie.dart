import 'dart:developer';

import 'package:medcon_project_college/layers/data/datasource/firebase/firestore_datasource.dart';
import 'package:medcon_project_college/layers/domain/helpers/resource.dart';
import 'package:medcon_project_college/layers/domain/entities/account_entity.dart';
import 'package:medcon_project_college/layers/domain/usecases/get_auth_account_usecases/get_remote_add_account_usecase.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../datasource/firebase/auth_error_type.dart';
import '../datasource/firebase/firestore_error_type.dart';
import '../medicine_model/account_model.dart';

class AddAccountRepositorie implements GetRemoteAddAccountUsecase {
  final FirebaseAuth firebaseAuthClient;
  final FirestoreDataSource firestoreClient;

  AddAccountRepositorie({
    required this.firebaseAuthClient,
    required this.firestoreClient,
  });

  @override
  Future<Resource<AccountEntity, dynamic>> call({
    required AddAccountUsecaseParams params,
    required String collectionReferencePath,
  }) async {
    final result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: params.email,
      password: params.password,
    );
    if (result.user != null) {
      try {
        Resource<Map<String, dynamic>, FirestoreErrorType> response =
            await firestoreClient.setDocument(
          path: collectionReferencePath,
          documentId: result.user!.uid,
          object: RemoteAddAccountUsecaseParams.fromDomain(params).toMap(),
        );
       
        if (response.hasError) {
          log('[RESPONSE_HAS_ERROR]');
          return Resource(error: response.error);
        } 
        
        else {
          log('[RESPONSE_HAS_DATA]');
          final AccountEntity account =
              AccountModel.fromMap(response.data!).toEntity();

          return Resource(data: account);
        }
      } catch (error) {
       
        log('[MANIPULATING_DATA_ERROR]:' + error.toString());
        return Resource(error: FirestoreErrorType.serverError);

       
      }
    }
    return Resource(error: FirebaseAuthErrorType.userDoNotExist);
  }
}



class RemoteAddAccountUsecaseParams{
  final String firstName;
  final String lastName;
  final int age;
  final String email;
  final String gender;

  RemoteAddAccountUsecaseParams({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.email,
    required this.gender,
    });


    factory RemoteAddAccountUsecaseParams.fromDomain(
      AddAccountUsecaseParams params,
    ) =>
        RemoteAddAccountUsecaseParams(
          firstName: params.firstName,
          lastName: params.lastName,
          age: params.age,
          email: params.email,
          gender: params.gender,
          );

    Map<String, dynamic> toMap() =>{
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'age': age,
        'gender': gender,
    };

}


