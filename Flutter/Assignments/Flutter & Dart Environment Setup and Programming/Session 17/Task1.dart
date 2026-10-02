/*Create a Dart function named isValidUsername that takes a String and returns true if it is at least 6 characters long and contains no spaces, otherwise returns false. */

bool isValidUsername(String username) {
  return username.length >= 6 && !username.contains(" ");
}

void main() {
  print(isValidUsername("Mahiman")); // true
  print(isValidUsername("Mahim")); // false
  print(isValidUsername("Ma himan")); // false
}
