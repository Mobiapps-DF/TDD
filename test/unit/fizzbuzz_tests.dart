import 'package:tdd/fizzbuzz.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('fizzBuzz accepts integer input', () {
    fizzBuzz(42);
  });
  test('fizzBuzz returns string output', () {
    expect(fizzBuzz(42), isA<String>());
  });
  test('fizzBuzz returns string input', () {
    expect(fizzBuzz(1), '1');
    expect(fizzBuzz(41), '41');
    expect(fizzBuzz(52), '52');
  });
  test('ShouldReturnFizz_whenIsMultipleOfThree ', () {
    expect(fizzBuzz(9), 'Fizz');
    expect(fizzBuzz(12), 'Fizz');
    expect(fizzBuzz(6), 'Fizz');
  });

  test('ShouldReturnBuzz_whenIsMultipleOfFive ', () {
    expect(fizzBuzz(5), 'Buzz');
    expect(fizzBuzz(10), 'Buzz');
    expect(fizzBuzz(25), 'Buzz');
  });

  test('ShouldReturnFizzBuzz_whenIsMultipleOfThreeAndFive ', () {
    expect(fizzBuzz(15), 'FizzBuzz');
    expect(fizzBuzz(30), 'FizzBuzz');
    expect(fizzBuzz(45), 'FizzBuzz');
  });
}
