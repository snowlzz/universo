import 'package:mobx/mobx.dart';

part 'noticias_store.g.dart';

class NoticiasStore = _NoticiasStoreBase with _$NoticiasStore;
abstract class _NoticiasStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 

  
}