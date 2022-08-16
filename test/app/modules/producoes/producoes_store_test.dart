import 'package:flutter_test/flutter_test.dart';
import 'package:universo/app/modules/producoes/producoes_store.dart';
 
void main() {
  late ProducoesStore store;

  setUpAll(() {
    store = ProducoesStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}