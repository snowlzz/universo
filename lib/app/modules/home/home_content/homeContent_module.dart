// ignore_for_file: file_names

import 'package:universo/app/modules/home/home_content/homeContent_Page.dart';
import 'package:universo/app/modules/home/home_content/homeContent_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../register/register_store.dart';

class HomeContentModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeContentStore()),
    Bind.lazySingleton((i) => RegisterStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/homecontent', child: (_, args) => const HomeContentPage()),
  ];
}
