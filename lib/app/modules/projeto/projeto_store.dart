import 'package:mobx/mobx.dart';

part 'projeto_store.g.dart';

class ProjetoStore = _ProjetoStoreBase with _$ProjetoStore;
abstract class _ProjetoStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}