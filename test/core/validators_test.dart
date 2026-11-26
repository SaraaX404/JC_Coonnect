import 'package:flutter_test/flutter_test.dart';
import 'package:jc_connect_app/src/core/utils/validators.dart';

void main() {
  test('isValidEmail accepts addresses and rejects malformed input', () {
    const cases = {
      'm.sterling@jc.edu.jm': true,
      '  name@example.com  ': true,
      'm.sterlingjc.edu.jm': false,
      'name@example': false,
      'name @example.com': false,
      '': false,
    };
    cases.forEach((input, expected) {
      expect(isValidEmail(input), expected, reason: input);
    });
  });

  test('maskEmail keeps the first letter and the domain', () {
    expect(maskEmail('m.sterling@jc.edu.jm'), 'm***@jc.edu.jm');
    expect(maskEmail('a@b.co'), 'a***@b.co');
    expect(maskEmail('not-an-email'), 'not-an-email');
    expect(maskEmail('@jc.edu.jm'), '@jc.edu.jm');
  });
}
