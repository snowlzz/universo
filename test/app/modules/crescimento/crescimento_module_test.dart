// ignore_for_file: unused_import

import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:universo/app/modules/crescimento/crescimento_module.dart';
 
void main() {

  setUpAll(() {
    initModule(CrescimentoModule());
  });
}