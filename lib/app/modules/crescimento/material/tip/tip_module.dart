
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip15_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip16_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip17_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip18_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip19_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip20_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip21_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip22_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip23_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip24_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip25_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip26_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip27_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip28_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip29_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip30_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip31_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip32_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip33_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip34_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip35_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip36_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip5_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/pages/tip6_page.dart';
import 'package:universo/app/modules/crescimento/material/tip/tip_store.dart';

import 'pages/tip1_page.dart';
import 'pages/tip2_page.dart';
import 'pages/tip3_page.dart';
import 'pages/tip4_page.dart';
import 'pages/tip7_page.dart';
import 'pages/tip8_page.dart';
import 'pages/tip9_page.dart';
import 'pages/tip10_page.dart';
import 'pages/tip11_page.dart';
import 'pages/tip12_page.dart';
import 'pages/tip13_page.dart';
import 'pages/tip14_page.dart';
import 'tip_page.dart';

class TipModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TipStore()),
    Bind.singleton((i) => const Tip1Page()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const TipPage()),
    ChildRoute('/tip1', child: (_, args) => const Tip1Page()),
    ChildRoute('/tip2', child: (_, args) => const Tip2Page()),
    ChildRoute('/tip3', child: (_, args) => const Tip3Page()),
    ChildRoute('/tip4', child: (_, args) => const Tip4Page()),
    ChildRoute('/tip5', child: (_, args) => const Tip5Page()),
    ChildRoute('/tip6', child: (_, args) => const Tip6Page()),
    ChildRoute('/tip7', child: (_, args) => const Tip7Page()),
    ChildRoute('/tip8', child: (_, args) => const Tip8Page()),
    ChildRoute('/tip9', child: (_, args) => const Tip9Page()),
    ChildRoute('/tip10', child: (_, args) => const Tip10Page()),
    ChildRoute('/tip11', child: (_, args) => const Tip11Page()),
    ChildRoute('/tip12', child: (_, args) => const Tip12Page()),
    ChildRoute('/tip13', child: (_, args) => const Tip13Page()),
    ChildRoute('/tip14', child: (_, args) => const Tip14Page()),
    ChildRoute('/tip15', child: (_, args) => const Tip15Page()),
    ChildRoute('/tip16', child: (_, args) => const Tip16Page()),
    ChildRoute('/tip17', child: (_, args) => const Tip17Page()),
    ChildRoute('/tip18', child: (_, args) => const Tip19Page()),
    ChildRoute('/tip18', child: (_, args) => const Tip20Page()),
    ChildRoute('/tip18', child: (_, args) => const Tip21Page()),
    ChildRoute('/tip18', child: (_, args) => const Tip22Page()),
    ChildRoute('/tip18', child: (_, args) => const Tip23Page()),
    ChildRoute('/tip18', child: (_, args) => const Tip24Page()),
    ChildRoute('/tip18', child: (_, args) => const Tip25Page()),
    ChildRoute('/tip18', child: (_, args) => const Tip26Page()),
    ChildRoute('/tip18', child: (_, args) => const Tip27Page()),
    ChildRoute('/tip18', child: (_, args) => const Tip28Page()),
    ChildRoute('/tip18', child: (_, args) => const Tip29Page()),
    ChildRoute('/tip18', child: (_, args) => const Tip30Page()),
    ChildRoute('/tip18', child: (_, args) => const Tip31Page()),
    ChildRoute('/tip18', child: (_, args) => const Tip32Page()),
    ChildRoute('/tip18', child: (_, args) => const Tip33Page()),
    ChildRoute('/tip18', child: (_, args) => const Tip34Page()),
    ChildRoute('/tip18', child: (_, args) => const Tip35Page()),
    ChildRoute('/tip18', child: (_, args) => const Tip36Page()),
  ];
}
