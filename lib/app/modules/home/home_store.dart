// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;
abstract class _HomeStoreBase with Store {

  @observable
  int currentIndex = 0;

  @action
  void updateCurrentIndex(int index) => currentIndex = index;

}