int add(String input) {
  final values = input.split(',');

  return input.isEmpty
      ? 0
      : values.fold(0, (value, element) => value + int.parse(element));
}
