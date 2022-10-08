import 'package:medcon_project_college/layers/domain/usecases/get_auth_account_usecases/get_remote_add_account_usecase.dart';
import 'package:mobx/mobx.dart';
part 'mobx_signup_presenter.g.dart';

class MobxSignUpPresenter = _MobxSignUpPresenterBase with _$MobxSignUpPresenter;

abstract class _MobxSignUpPresenterBase with Store {
  @observable
  String? firstName = '';

  @observable
  String? lastName = '';

  @observable
  int? age = 0;

  @observable
  String? email = '';

  @observable
  String? password = '';

  @observable
  String? gender = '';

  @action
  void changeFirstName(String newValue) => firstName = newValue;

  @action
  void changeLastName(String newValue) => lastName = newValue;

  @action
  void changeAge(int newValue) => age = newValue;

  @action
  void changeEmail(String newValue) => email = newValue;

  @action
  void changePassword(String newValue) => password = newValue;

  @action
  void changeGender(String newValue) => gender = newValue;

  @computed
  bool get isFirstNameValid => firstName != null;

  @computed
  bool get isLastNameValid => lastName !=null;

  @computed
  bool get isAgeValid => age != 0;

  @computed
  bool get isEmailValid =>
      email != null && email!.contains('@') && email!.contains('.com');

  @computed
  bool get isPasswordValid => password != null && password!.length >= 6;

  @override
  @action
  Future<void> signUp() async {
    final params = AddAccountUsecaseParams(
      firstName: firstName ?? '',
      lastName: lastName ?? '',
      age: age ?? 0,
      gender: gender ?? '',
      email: email ?? '',
      password: password ?? '',
    );
  }
}
