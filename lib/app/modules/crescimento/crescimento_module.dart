import 'package:flutter/material.dart';
import 'package:universo/app/modules/crescimento/crescimento_Page.dart';
import 'package:universo/app/modules/crescimento/crescimento_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo/app/modules/crescimento/material/tip/tip_page.dart';

class CrescimentoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CrescimentoStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const CrescimentoPage()),
    ChildRoute('/tip', child: (_, args) => const TipPage())
  ];
  
  Widget get view => const CrescimentoPage();
}
