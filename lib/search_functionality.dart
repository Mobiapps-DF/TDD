List<String> cities = [
  'Paris', 'Budapest', 'Skopje', 'Rotterdam', 'Valencia', 'Vancouver', 'Amsterdam', 'Vienna', 'Sydney', 'New York City', 'London', 'Bangkok', 'Hong Kong', 'Dubai', 'Rome', 'Istanbul'
];

List<String> searchFunctionality(String entry) {
  List<String> result = [];
  // if (entry == '' || entry == 'a') {
  //   result = [];
  // }
  //
  // if (entry == 'Va') {
  //   result = ['Valencia', 'Vancouver'];
  // }
  //
  // if (entry == 'Pa') {
  //   return cities.where((element) => element.startsWith('Pa')).toList();
  // }
  if (entry.length >= 2) {
    result = cities.where((element) => element.toLowerCase().startsWith(entry.toLowerCase())).toList();
  }

  return result;
}