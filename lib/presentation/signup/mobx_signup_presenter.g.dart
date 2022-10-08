// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx_signup_presenter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MobxSignUpPresenter on _MobxSignUpPresenterBase, Store {
  Computed<bool>? _$isFirstNameValidComputed;

  @override
  bool get isFirstNameValid => (_$isFirstNameValidComputed ??= Computed<bool>(
          () => super.isFirstNameValid,
          name: '_MobxSignUpPresenterBase.isFirstNameValid'))
      .value;
  Computed<bool>? _$isLastNameValidComputed;

  @override
  bool get isLastNameValid =>
      (_$isLastNameValidComputed ??= Computed<bool>(() => super.isLastNameValid,
              name: '_MobxSignUpPresenterBase.isLastNameValid'))
          .value;
  Computed<bool>? _$isAgeValidComputed;

  @override
  bool get isAgeValid =>
      (_$isAgeValidComputed ??= Computed<bool>(() => super.isAgeValid,
              name: '_MobxSignUpPresenterBase.isAgeValid'))
          .value;
  Computed<bool>? _$isEmailValidComputed;

  @override
  bool get isEmailValid =>
      (_$isEmailValidComputed ??= Computed<bool>(() => super.isEmailValid,
              name: '_MobxSignUpPresenterBase.isEmailValid'))
          .value;
  Computed<bool>? _$isPasswordValidComputed;

  @override
  bool get isPasswordValid =>
      (_$isPasswordValidComputed ??= Computed<bool>(() => super.isPasswordValid,
              name: '_MobxSignUpPresenterBase.isPasswordValid'))
          .value;

  late final _$firstNameAtom =
      Atom(name: '_MobxSignUpPresenterBase.firstName', context: context);

  @override
  String? get firstName {
    _$firstNameAtom.reportRead();
    return super.firstName;
  }

  @override
  set firstName(String? value) {
    _$firstNameAtom.reportWrite(value, super.firstName, () {
      super.firstName = value;
    });
  }

  late final _$lastNameAtom =
      Atom(name: '_MobxSignUpPresenterBase.lastName', context: context);

  @override
  String? get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(String? value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

  late final _$ageAtom =
      Atom(name: '_MobxSignUpPresenterBase.age', context: context);

  @override
  int? get age {
    _$ageAtom.reportRead();
    return super.age;
  }

  @override
  set age(int? value) {
    _$ageAtom.reportWrite(value, super.age, () {
      super.age = value;
    });
  }

  late final _$emailAtom =
      Atom(name: '_MobxSignUpPresenterBase.email', context: context);

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_MobxSignUpPresenterBase.password', context: context);

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$genderAtom =
      Atom(name: '_MobxSignUpPresenterBase.gender', context: context);

  @override
  String? get gender {
    _$genderAtom.reportRead();
    return super.gender;
  }

  @override
  set gender(String? value) {
    _$genderAtom.reportWrite(value, super.gender, () {
      super.gender = value;
    });
  }

  late final _$signUpAsyncAction =
      AsyncAction('_MobxSignUpPresenterBase.signUp', context: context);

  @override
  Future<void> signUp() {
    return _$signUpAsyncAction.run(() => super.signUp());
  }

  late final _$_MobxSignUpPresenterBaseActionController =
      ActionController(name: '_MobxSignUpPresenterBase', context: context);

  @override
  void changeFirstName(String newValue) {
    final _$actionInfo = _$_MobxSignUpPresenterBaseActionController.startAction(
        name: '_MobxSignUpPresenterBase.changeFirstName');
    try {
      return super.changeFirstName(newValue);
    } finally {
      _$_MobxSignUpPresenterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeLastName(String newValue) {
    final _$actionInfo = _$_MobxSignUpPresenterBaseActionController.startAction(
        name: '_MobxSignUpPresenterBase.changeLastName');
    try {
      return super.changeLastName(newValue);
    } finally {
      _$_MobxSignUpPresenterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeAge(int newValue) {
    final _$actionInfo = _$_MobxSignUpPresenterBaseActionController.startAction(
        name: '_MobxSignUpPresenterBase.changeAge');
    try {
      return super.changeAge(newValue);
    } finally {
      _$_MobxSignUpPresenterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmail(String newValue) {
    final _$actionInfo = _$_MobxSignUpPresenterBaseActionController.startAction(
        name: '_MobxSignUpPresenterBase.changeEmail');
    try {
      return super.changeEmail(newValue);
    } finally {
      _$_MobxSignUpPresenterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePassword(String newValue) {
    final _$actionInfo = _$_MobxSignUpPresenterBaseActionController.startAction(
        name: '_MobxSignUpPresenterBase.changePassword');
    try {
      return super.changePassword(newValue);
    } finally {
      _$_MobxSignUpPresenterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeGender(String newValue) {
    final _$actionInfo = _$_MobxSignUpPresenterBaseActionController.startAction(
        name: '_MobxSignUpPresenterBase.changeGender');
    try {
      return super.changeGender(newValue);
    } finally {
      _$_MobxSignUpPresenterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
firstName: ${firstName},
lastName: ${lastName},
age: ${age},
email: ${email},
password: ${password},
gender: ${gender},
isFirstNameValid: ${isFirstNameValid},
isLastNameValid: ${isLastNameValid},
isAgeValid: ${isAgeValid},
isEmailValid: ${isEmailValid},
isPasswordValid: ${isPasswordValid}
    ''';
  }
}
