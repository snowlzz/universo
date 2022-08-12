// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initial_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$InitialStore on _InitialStoreBase, Store {
  late final _$controllerEmailAtom =
      Atom(name: '_InitialStoreBase.controllerEmail', context: context);

  @override
  TextEditingController get controllerEmail {
    _$controllerEmailAtom.reportRead();
    return super.controllerEmail;
  }

  @override
  set controllerEmail(TextEditingController value) {
    _$controllerEmailAtom.reportWrite(value, super.controllerEmail, () {
      super.controllerEmail = value;
    });
  }

  late final _$controllerPassAtom =
      Atom(name: '_InitialStoreBase.controllerPass', context: context);

  @override
  TextEditingController get controllerPass {
    _$controllerPassAtom.reportRead();
    return super.controllerPass;
  }

  @override
  set controllerPass(TextEditingController value) {
    _$controllerPassAtom.reportWrite(value, super.controllerPass, () {
      super.controllerPass = value;
    });
  }

  late final _$errorAtom =
      Atom(name: '_InitialStoreBase.error', context: context);

  @override
  String get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_InitialStoreBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$signInWithEmailAndPasswordAsyncAction = AsyncAction(
      '_InitialStoreBase.signInWithEmailAndPassword',
      context: context);

  @override
  Future<dynamic> signInWithEmailAndPassword(UserModel user) {
    return _$signInWithEmailAndPasswordAsyncAction
        .run(() => super.signInWithEmailAndPassword(user));
  }

  late final _$_InitialStoreBaseActionController =
      ActionController(name: '_InitialStoreBase', context: context);

  @override
  dynamic changeEmail(String value) {
    final _$actionInfo = _$_InitialStoreBaseActionController.startAction(
        name: '_InitialStoreBase.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_InitialStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePass(String value) {
    final _$actionInfo = _$_InitialStoreBaseActionController.startAction(
        name: '_InitialStoreBase.changePass');
    try {
      return super.changePass(value);
    } finally {
      _$_InitialStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
controllerEmail: ${controllerEmail},
controllerPass: ${controllerPass},
error: ${error},
loading: ${loading}
    ''';
  }
}
