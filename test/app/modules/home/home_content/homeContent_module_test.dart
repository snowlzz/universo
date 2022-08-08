// ignore_for_file: unused_import, file_names

import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:universo/app/modules/home/home_content/homeContent_module.dart';
 
void main() {

  setUpAll(() {
    initModule(HomeContentModule());
  });
}