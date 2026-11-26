import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jc_connect_app/src/core/network/api.dart';

void main() {
  test('localhost on Android becomes the emulator host address', () {
    expect(
      originFor('http://localhost:8000', TargetPlatform.android),
      'http://10.0.2.2:8000',
    );
  });

  test('other platforms and real hosts keep the origin', () {
    expect(
      originFor('http://localhost:8000', TargetPlatform.iOS),
      'http://localhost:8000',
    );
    expect(
      originFor('https://api.example.com', TargetPlatform.android),
      'https://api.example.com',
    );
  });
}
