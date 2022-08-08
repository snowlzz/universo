// ignore_for_file: file_names

import 'package:flutter_test/flutter_test.dart';
import 'package:universo/app/modules/home/home_content/homeContent_store.dart';
 
void main() {
  late HomeContentStore store;

  setUpAll(() {
    store = HomeContentStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}