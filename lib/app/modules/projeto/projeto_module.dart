import 'package:universo/app/modules/projeto/projeto_Page.dart';
import 'package:universo/app/modules/projeto/projeto_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProjetoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProjetoStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ProjetoPage()),
  ];
}
