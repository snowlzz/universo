// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:universo/app/modules/cartilha/cartilha_page.dart';
import 'package:universo/app/modules/home/home_page.dart';
import 'package:universo/app/modules/home/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo/app/modules/noticias/noticias_page.dart';
import 'package:universo/app/modules/producoes/producoes_page.dart';
import 'package:universo/app/modules/projeto/projeto_page.dart';

import '../crescimento/material/tip/pages/tip1_page.dart';
import '../desenvolvimento/desenvolvimento_Page.dart';
import '../desenvolvimento/desenvolvimento_store.dart';
import '../profile/profile_page.dart';
import '../profile/profile_store.dart';
import '../register/register_store.dart';
import 'home_content/homeContent_store.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => HomeContentStore()),
    Bind.lazySingleton((i) => ProfileStore()),
    Bind.lazySingleton((i) => DesenvolvimentoStore()),
    Bind.lazySingleton((i) => RegisterStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) =>  const HomePage()),
    ChildRoute('/profile', child: (_, args) =>  const ProfilePage()),
    ChildRoute('/cartilha', child: (_, args) => const CartilhaPage()),
    ChildRoute('/noticias', child: (_, args) => const NoticiasPage()),
    ChildRoute('/projeto', child: (_, args) => const ProjetoPage()),
    ChildRoute('/producoes', child: (_, args) => const ProducoesPage()),
  ];

  

  Widget get view => const HomePage();


}
