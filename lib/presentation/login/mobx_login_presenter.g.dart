// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx_login_presenter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MobxLoginPresenter on _MobxLoginPresenterBase, Store {
  late final _$emailAtom =
      Atom(name: '_MobxLoginPresenterBase.email', context: context);

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
      Atom(name: '_MobxLoginPresenterBase.password', context: context);

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

  late final _$signInAsyncAction =
      AsyncAction('_MobxLoginPresenterBase.signIn', context: context);

  @override
  Future<void> signIn() {
    return _$signInAsyncAction.run(() => super.signIn());
  }

  late final _$_MobxLoginPresenterBaseActionController =
      ActionController(name: '_MobxLoginPresenterBase', context: context);

  @override
  void changeEmail(String newValue) {
    final _$actionInfo = _$_MobxLoginPresenterBaseActionController.startAction(
        name: '_MobxLoginPresenterBase.changeEmail');
    try {
      return super.changeEmail(newValue);
    } finally {
      _$_MobxLoginPresenterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePassword(String newValue) {
    final _$actionInfo = _$_MobxLoginPresenterBaseActionController.startAction(
        name: '_MobxLoginPresenterBase.changePassword');
    try {
      return super.changePassword(newValue);
    } finally {
      _$_MobxLoginPresenterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password}
    ''';
  }
}
