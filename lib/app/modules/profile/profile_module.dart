import 'package:flutter/material.dart';
import 'package:universo/app/modules/profile/profile_Page.dart';
import 'package:universo/app/modules/profile/profile_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../edit_profile/editProfile_Page.dart';
import '../edit_profile/editProfile_store.dart';
import '../home/home_content/homeContent_page.dart';
import '../register/register_store.dart';

class ProfileModule extends Module  {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProfileStore()),
    Bind.lazySingleton((i) => EditProfileStore()),
    Bind.lazySingleton((i) => RegisterStore()),
    // Bind.lazySingleton((i) => HStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const ProfilePage()),
    ChildRoute('/editprofile', child: (_, args) => const EditProfilePage()),
    ChildRoute('/homecontent', child: (_, args) => const HomeContentPage()),
  ];


  Widget get view =>  const ProfilePage();
}
