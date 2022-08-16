import 'package:flutter_test/flutter_test.dart';
import 'package:universo/app/modules/noticias/noticias_store.dart';
 
void main() {
  late NoticiasStore store;

  setUpAll(() {
    store = NoticiasStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}