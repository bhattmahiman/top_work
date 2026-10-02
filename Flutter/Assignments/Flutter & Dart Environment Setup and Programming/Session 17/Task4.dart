/* Write a reusable Dart function validatePhoneNumber that checks if a given string is a valid Indian mobile number (starts with 6-9 and has exactly 10 digits). */

bool validatePhoneNumber(String phoneNumber) {
  return RegExp(r'^[6-9]\d{9}$').hasMatch(phoneNumber);
}

void main() {
  print(validatePhoneNumber("9876543210")); // true
  print(validatePhoneNumber("5123456789")); // false
  print(validatePhoneNumber("987654321")); // false
  print(validatePhoneNumber("98765 43210")); // false
}
