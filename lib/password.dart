import 'package:fpdart/fpdart.dart';

const passwordTooShort = 'Password must be at least 8 characters';
const atLeastTwoNumbers = 'The password must contain at least 2 numbers';

Either<String, void> verifyPassword(String password) {
  final checkNumbers = RegExp(r'\d');

  List<String> errors = [
    if (password.length < 8) passwordTooShort,
    if (checkNumbers.allMatches(password).length < 2) atLeastTwoNumbers,
  ];

  return errors.isNotEmpty
      ? Either.left(errors.join('\n'))
      : Either.right(null);
}
