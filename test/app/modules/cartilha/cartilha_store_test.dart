import 'package:flutter_test/flutter_test.dart';
import 'package:universo/app/modules/cartilha/cartilha_store.dart';
 
void main() {
  late CartilhaStore store;

  setUpAll(() {
    store = CartilhaStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}