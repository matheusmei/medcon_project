import 'package:medcon_project_college/layers/domain/entities/account_entity.dart';

mixin GetLocalCurrentAccountUsecase {
  Future<void> save(AccountEntity account);
}
