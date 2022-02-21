import 'package:flutter_test/flutter_test.dart';
import 'package:ipcalculator/services/apirequest.dart';

void main() {
  test('test api', () {
    print(ApiRequest.fetchSemester("1").asStream().toList().toString());
  });
}