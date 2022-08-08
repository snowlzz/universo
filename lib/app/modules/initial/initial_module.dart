import 'package:universo/app/modules/initial/initial_Page.dart';
import 'package:universo/app/modules/initial/initial_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../register/register_page.dart';
import '../register/register_store.dart';

class InitialModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => InitialStore()),
    Bind.lazySingleton((i) => RegisterStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const InitialPage()),
    ChildRoute('/register', child: (_, args) => const RegisterPage()),
  ];
}
