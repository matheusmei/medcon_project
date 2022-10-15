import 'package:medcon_project_college/layers/domain/usecases/get_auth_account_usecases/get_auth_account_usecase.dart';
import 'package:mobx/mobx.dart';
part 'mobx_login_presenter.g.dart';

class MobxLoginPresenter = _MobxLoginPresenterBase with _$MobxLoginPresenter;

abstract class _MobxLoginPresenterBase with Store {
  late final GetAuthAccountUsecase remoteGetAuthAccount;

  @observable
  String? email;

  @observable
  String? password;

  @action
  void changeEmail(String newValue) => email = newValue;

  @action
  void changePassword(String newValue) => password = newValue;

  @override
  @action
  Future<void> signIn() async {
    final sendResult = await remoteGetAuthAccount.call(
      params: GetAuthAccountUsecaseParams(
        email: email!,
        password: password!,
      ),
      collectionReferencePath: 'users',
    );
  }
}
