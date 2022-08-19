import 'package:tdd/calculator.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('add accepts string text input', () {
    expect(() => add('Test'), throwsFormatException);
  });

  test('add accepts string number input', () {
    add('1');
  });
  test('add returns int output', () {
    expect(add('1'), isA<int>());
  });
  test('add returns int output', () {
    expect(add(''), isZero);
  });

  test('add returns int output', () {
    expect(add('1'), 1);
  });

  test('sum input numbers', () {
    expect(add('1,0'), 1);
    expect(add('0,1'), 1);
    expect(add('1,1'), 2);
  });

  test('sum input numbers', () {
    expect(() => add('1,toto'), throwsFormatException);
    expect(() => add('0;1'), throwsFormatException);
    expect(() => add('1.5,3.4'), throwsFormatException);
    expect(add('1, 3 '), 4);
    expect(() => add('1,   3     4    '), throwsFormatException);
  });

  test('sum input numbers', () {
    expect(add('1,2,3,4'), 10);
    expect(add('10'), 10);
  });
}
