/* Build a function filterUniqueCuisines that takes a list of cuisine names (some duplicates, e.g., ['Italian', 'Chinese', 'Italian', 'Mexican', 'Chinese']) and returns a set of unique cuisines. Test it with sample data and print the result. */

Set<String> filterUniqueCuisines(List<String> cuisines) {
  return cuisines.toSet();
}

void main() {
  List<String> cuisines = [
    "Italian",
    "Chinese",
    "Italian",
    "Mexican",
    "Chinese",
  ];

  Set<String> uniqueCuisines = filterUniqueCuisines(cuisines);

  print("Unique cuisines:");
  print(uniqueCuisines);
}
