import 'package:mobx/mobx.dart';

part 'producoes_store.g.dart';

class ProducoesStore = _ProducoesStoreBase with _$ProducoesStore;
abstract class _ProducoesStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}