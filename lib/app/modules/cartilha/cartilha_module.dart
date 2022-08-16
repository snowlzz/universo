import 'package:universo/app/modules/cartilha/cartilha_Page.dart';
// import 'package:universo/app/modules/cartilha/cartilha_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CartilhaModule extends Module {
  @override
  final List<Bind> binds = [
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => CartilhaPage()),
  ];
}
