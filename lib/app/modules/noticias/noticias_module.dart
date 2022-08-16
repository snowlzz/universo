import 'package:universo/app/modules/noticias/noticias_Page.dart';
import 'package:universo/app/modules/noticias/noticias_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NoticiasModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => NoticiasStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => NoticiasPage()),
  ];
}
