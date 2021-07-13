
import 'dart:core';

class MockData {
  List<String> categories;
  MockData._();
  static final MockData mockData = MockData._();
  List<String> getCategories(){
    return <String>[
      'sport','classic','official','old','new'];
  }
}