// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

part 'homeContent_store.g.dart';

class HomeContentStore = _HomeContentStoreBase with _$HomeContentStore;
abstract class _HomeContentStoreBase with Store {




  recoveryName(String name){
    FirebaseAuth auth = FirebaseAuth.instance;
    User usuarioLogado = auth.currentUser!;
    name = usuarioLogado.displayName!;
    return name;

  }
}