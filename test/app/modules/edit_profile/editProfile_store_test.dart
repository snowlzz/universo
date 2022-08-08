// ignore_for_file: file_names

import 'package:flutter_test/flutter_test.dart';
import 'package:universo/app/modules/edit_profile/editProfile_store.dart';
 
void main() {
  late EditProfileStore store;

  setUpAll(() {
    store = EditProfileStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}