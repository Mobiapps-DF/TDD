import 'package:tdd/search_functionality.dart';
import 'package:test/test.dart';
import 'package:fpdart/fpdart.dart';

main() {
  test('shouldReturnEmptyArray_whenFewerThanTwoCharactersIsPassed', () {
    expect(searchFunctionality(''), []);
    expect(searchFunctionality('a'), []);
  });

  test('shouldReturnValenciaAndVancouver_whenVaIsPassed', () {
    expect(searchFunctionality('Va'), ['Valencia', 'Vancouver']);
  });

  test('shouldReturnAResult_whenCharactersArePassed', () {
    expect(searchFunctionality('Pa'), ['Paris']);
    expect(searchFunctionality('Rot'), ['Rotterdam']);
    expect(searchFunctionality('Xyz'), []);
  });

  test('shouldBeCasInseisitive_whenCharactersArePassed', () {
    expect(searchFunctionality('Pa'), ['Paris']);
    expect(searchFunctionality('pa'), ['Paris']);
    expect(searchFunctionality('pA'), ['Paris']);
  });
}