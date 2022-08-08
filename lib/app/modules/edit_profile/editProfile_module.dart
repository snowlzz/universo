// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:universo/app/modules/edit_profile/editProfile_Page.dart';
import 'package:universo/app/modules/edit_profile/editProfile_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../profile/profile_store.dart';

class EditProfileModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => EditProfileStore()),
    Bind.lazySingleton((i) => ProfileStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const EditProfilePage()),
  ];

  Widget get view =>  const EditProfilePage();
}
