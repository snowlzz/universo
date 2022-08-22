// ignore_for_file: file_names

import 'package:universo/app/modules/cartilha/cartilha_Page.dart';
import 'package:universo/app/modules/home/home_content/homeContent_Page.dart';
import 'package:universo/app/modules/home/home_content/homeContent_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo/app/modules/noticias/noticias_Page.dart';
import 'package:universo/app/modules/producoes/producoes_page.dart';
import 'package:universo/app/modules/projeto/projeto_Page.dart';

import '../../register/register_store.dart';

class HomeContentModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeContentStore()),
    Bind.lazySingleton((i) => RegisterStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const HomeContentPage()),
    ChildRoute('/cartilha', child: (_, args) => const CartilhaPage()),
    ChildRoute('/noticias', child: (_, args) => const NoticiasPage()),
    ChildRoute('/projeto', child: (_, args) => const ProjetoPage()),
    ChildRoute('/producoes', child: (_, args) => const ProducoesPage()),

  ];
}
