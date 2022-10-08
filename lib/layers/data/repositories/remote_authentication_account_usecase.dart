import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:medcon_project_college/layers/data/datasource/firebase/firestore_datasource.dart';


import '../../domain/entities/account_entity.dart';
import '../../domain/helpers/resource.dart';
import '../../domain/usecases/get_auth_account_usecases/get_auth_account_usecase.dart';
import '../datasource/firebase/auth_error_type.dart';
import '../datasource/firebase/firestore_error_type.dart';
import '../medicine_model/account_model.dart';

class RemoteAuthenticationAccountUseCase
    implements GetAuthAccountUsecase {
  final FirebaseAuth firebaseAuthClient;
  final FirestoreDataSource firestoreClient;

  RemoteAuthenticationAccountUseCase({
    required this.firebaseAuthClient,
    required this.firestoreClient,
  });

  @override
  Future<Resource<AccountEntity, dynamic>> call({
    required GetAuthAccountUsecaseParams params,
    required String collectionReferencePath,
  }) async {
    final result = await firebaseAuthClient.signInWithEmailAndPassword(
      email: params.email,
      password: params.password,
    );

    if (result.user != null) {
      try {
        Resource<Map<String, dynamic>, FirestoreErrorType> response =
            await firestoreClient.getDocument(
                path: collectionReferencePath + '/' + result.user!.uid);

        if (response.hasError) {
          log('[RESPONSE_HAS_ERROR]');
          return Resource(error: response.error);
        } else {
          log('[RESPONSE_HAS_DATA]');
          final AccountEntity account =
              AccountModel.fromMap(response.data!).toEntity();

          return Resource(data: account);
        }
      } catch (error) {
        log('[MANIPULATING_DATA_ERROR]:' + error.toString());
        return Resource(error: FirestoreErrorType.serverError); // TODO
      }
    }
    return Resource(error: FirebaseAuthErrorType.userDoNotExist);
  }
}

class RemoteAuthenticationAccountUseCaseImplParams {
  final String email;
  final String password;

  RemoteAuthenticationAccountUseCaseImplParams({
    required this.email,
    required this.password,
  });

  factory RemoteAuthenticationAccountUseCaseImplParams.fromDomain(
          {required GetAuthAccountUsecaseParams params}) =>
      RemoteAuthenticationAccountUseCaseImplParams(
        email: params.email,
        password: params.password,
      );

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };
}
