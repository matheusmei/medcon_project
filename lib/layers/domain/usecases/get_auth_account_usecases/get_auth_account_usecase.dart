import 'package:medcon_project_college/layers/domain/entities/account_entity.dart';
import 'package:medcon_project_college/layers/domain/helpers/resource.dart';

abstract class GetAuthAccountUsecase {
  Future<Resource<AccountEntity, dynamic>> call({
    
  })
}