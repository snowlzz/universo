// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editProfile_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EditProfileStore on _EditProfileStoreBase, Store {
  late final _$controllerKidNameAtom =
      Atom(name: '_EditProfileStoreBase.controllerKidName', context: context);

  @override
  TextEditingController get controllerKidName {
    _$controllerKidNameAtom.reportRead();
    return super.controllerKidName;
  }

  @override
  set controllerKidName(TextEditingController value) {
    _$controllerKidNameAtom.reportWrite(value, super.controllerKidName, () {
      super.controllerKidName = value;
    });
  }

  late final _$controllerBirthAtom =
      Atom(name: '_EditProfileStoreBase.controllerBirth', context: context);

  @override
  TextEditingController get controllerBirth {
    _$controllerBirthAtom.reportRead();
    return super.controllerBirth;
  }

  @override
  set controllerBirth(TextEditingController value) {
    _$controllerBirthAtom.reportWrite(value, super.controllerBirth, () {
      super.controllerBirth = value;
    });
  }

  late final _$controllerWeeksAtom =
      Atom(name: '_EditProfileStoreBase.controllerWeeks', context: context);

  @override
  TextEditingController get controllerWeeks {
    _$controllerWeeksAtom.reportRead();
    return super.controllerWeeks;
  }

  @override
  set controllerWeeks(TextEditingController value) {
    _$controllerWeeksAtom.reportWrite(value, super.controllerWeeks, () {
      super.controllerWeeks = value;
    });
  }

  late final _$controllerDaysAtom =
      Atom(name: '_EditProfileStoreBase.controllerDays', context: context);

  @override
  TextEditingController get controllerDays {
    _$controllerDaysAtom.reportRead();
    return super.controllerDays;
  }

  @override
  set controllerDays(TextEditingController value) {
    _$controllerDaysAtom.reportWrite(value, super.controllerDays, () {
      super.controllerDays = value;
    });
  }

  late final _$idadeCorrigidaAtom =
      Atom(name: '_EditProfileStoreBase.idadeCorrigida', context: context);

  @override
  int? get idadeCorrigida {
    _$idadeCorrigidaAtom.reportRead();
    return super.idadeCorrigida;
  }

  @override
  set idadeCorrigida(int? value) {
    _$idadeCorrigidaAtom.reportWrite(value, super.idadeCorrigida, () {
      super.idadeCorrigida = value;
    });
  }

  late final _$idLogadoAtom =
      Atom(name: '_EditProfileStoreBase.idLogado', context: context);

  @override
  String? get idLogado {
    _$idLogadoAtom.reportRead();
    return super.idLogado;
  }

  @override
  set idLogado(String? value) {
    _$idLogadoAtom.reportWrite(value, super.idLogado, () {
      super.idLogado = value;
    });
  }

  late final _$gestationAtom =
      Atom(name: '_EditProfileStoreBase.gestation', context: context);

  @override
  int get gestation {
    _$gestationAtom.reportRead();
    return super.gestation;
  }

  @override
  set gestation(int value) {
    _$gestationAtom.reportWrite(value, super.gestation, () {
      super.gestation = value;
    });
  }

  late final _$kidPhotoAtom =
      Atom(name: '_EditProfileStoreBase.kidPhoto', context: context);

  @override
  XFile? get kidPhoto {
    _$kidPhotoAtom.reportRead();
    return super.kidPhoto;
  }

  @override
  set kidPhoto(XFile? value) {
    _$kidPhotoAtom.reportWrite(value, super.kidPhoto, () {
      super.kidPhoto = value;
    });
  }

  late final _$momPhotoAtom =
      Atom(name: '_EditProfileStoreBase.momPhoto', context: context);

  @override
  XFile? get momPhoto {
    _$momPhotoAtom.reportRead();
    return super.momPhoto;
  }

  @override
  set momPhoto(XFile? value) {
    _$momPhotoAtom.reportWrite(value, super.momPhoto, () {
      super.momPhoto = value;
    });
  }

  late final _$uploadAtom =
      Atom(name: '_EditProfileStoreBase.upload', context: context);

  @override
  bool get upload {
    _$uploadAtom.reportRead();
    return super.upload;
  }

  @override
  set upload(bool value) {
    _$uploadAtom.reportWrite(value, super.upload, () {
      super.upload = value;
    });
  }

  late final _$photoURLAtom =
      Atom(name: '_EditProfileStoreBase.photoURL', context: context);

  @override
  String get photoURL {
    _$photoURLAtom.reportRead();
    return super.photoURL;
  }

  @override
  set photoURL(String value) {
    _$photoURLAtom.reportWrite(value, super.photoURL, () {
      super.photoURL = value;
    });
  }

  @override
  String toString() {
    return '''
controllerKidName: ${controllerKidName},
controllerBirth: ${controllerBirth},
controllerWeeks: ${controllerWeeks},
controllerDays: ${controllerDays},
idadeCorrigida: ${idadeCorrigida},
idLogado: ${idLogado},
gestation: ${gestation},
kidPhoto: ${kidPhoto},
momPhoto: ${momPhoto},
upload: ${upload},
photoURL: ${photoURL}
    ''';
  }
}
