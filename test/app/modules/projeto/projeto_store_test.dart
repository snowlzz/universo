import 'package:flutter_test/flutter_test.dart';
import 'package:universo/app/modules/projeto/projeto_store.dart';
 
void main() {
  late ProjetoStore store;

  setUpAll(() {
    store = ProjetoStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}