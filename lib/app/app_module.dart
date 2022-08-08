import 'package:flutter_modular/flutter_modular.dart';

import 'modules/crescimento/crescimento_module.dart';
import 'modules/crescimento/crescimento_store.dart';
import 'modules/desenvolvimento/desenvolvimento_module.dart';
import 'modules/desenvolvimento/desenvolvimento_store.dart';
import 'modules/edit_profile/editProfile_module.dart';
import 'modules/edit_profile/editProfile_store.dart';
import 'modules/home/home_module.dart';
import 'modules/home/home_store.dart';
import 'modules/initial/initial_module.dart';
import 'modules/profile/profile_module.dart';
import 'modules/profile/profile_store.dart';
import 'modules/register/register_module.dart';
import 'modules/register/register_store.dart';


class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RegisterStore()),
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => ProfileStore()),
    Bind.lazySingleton((i) => DesenvolvimentoStore()),
    Bind.lazySingleton((i) => CrescimentoStore()),
    Bind.lazySingleton((i) => EditProfileStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: InitialModule()),
    ModuleRoute('/register', module: RegisterModule()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/profile', module: ProfileModule()),
    ModuleRoute('/desenvolvimento', module: DesenvolvimentoModule()),
    ModuleRoute('/crescimento', module: CrescimentoModule()),
    ModuleRoute('/editprofile', module: EditProfileModule()),
  ];

}