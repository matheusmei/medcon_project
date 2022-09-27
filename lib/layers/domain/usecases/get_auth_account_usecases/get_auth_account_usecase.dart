import 'package:equatable/equatable.dart';
import 'package:medcon_project_college/layers/domain/entities/account_entity.dart';
import 'package:medcon_project_college/layers/domain/helpers/resource.dart';

abstract class GetAuthAccountUsecase {
  Future<Resource<AccountEntity, dynamic>> call({
    required GetAuthAccountUsecaseParams params,
    required String collectionReferencePath,
  });
}

class GetAuthAccountUsecaseParams extends Equatable {
  final String email;
  final String password;

  const GetAuthAccountUsecaseParams({
    required this.email,
    required this.password,
  });

  @override
  List<dynamic> get props => [
        email,
        password,
      ];
}
