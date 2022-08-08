import 'package:flutter/material.dart';
import 'package:universo/app/modules/desenvolvimento/desenvolvimento_Page.dart';
import 'package:universo/app/modules/desenvolvimento/desenvolvimento_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DesenvolvimentoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => DesenvolvimentoStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const DesenvolvimentoPage()),
  ];

  
  
  Widget get view =>  const DesenvolvimentoPage();
}
