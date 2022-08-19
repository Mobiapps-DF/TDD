import 'package:fpdart/fpdart.dart';
import 'package:tdd/password.dart';
import 'package:test/test.dart';

void main() {
  test('ShouldReturnAnObject_whenAStringIsPassed', () {
    Either result = verifyPassword('blabla');
  });

  test('ShouldReturnAnObjectWithBooleanAndString_whenAStringIsPassed', () {
    Either<String, void> result = verifyPassword('blabla');
  });

  test('ShouldReturnLeft_whenAStringIsShorterThanEight', () {
    Either<String, void> result = verifyPassword('blabla');
    expect(result.getLeft().getOrElse(() => ''), contains(passwordTooShort));
    expect(result.getLeft().getOrElse(() => ''), contains(atLeastTwoNumbers));
    expect(result.getLeft().getOrElse(() => ''), contains('\n'));
    expect(result.getRight(), const None());
  });

  test(
      'ShouldReturnRight_whenAStringIsLongerThanEightAnContainsAtLeastTwoNumbers',
      () {
    Either<String, void> result = verifyPassword('bla1bla2bla');
    expect(result.isLeft(), false);
    expect(result.isRight(), true);
    result = verifyPassword('bla1bla2bla3');
    expect(result.isLeft(), false);
    expect(result.isRight(), true);
  });

  test('ShouldReturnLeft_whenAStringDoesNotContainAtLeastTwoNumbers', () {
    Either<String, void> result = verifyPassword('blablabla1');
    expect(result.getLeft().getOrElse(() => ''), atLeastTwoNumbers);
    expect(result.isRight(), false);
  });
}
