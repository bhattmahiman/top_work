/* Create a Dart function loginStatus that takes two strings: username and password. If both match 'user123' and 'pass123', print 'Login Successful'; 
if the username matches but password doesn't, print 'Incorrect password'; otherwise, print 'User not found'.
Hint: Use nested if-else statements to check each condition.*/

import 'dart:io';

void loginStatus(String username, String password) {
  if (username == "user123" && password == "pass123") {
    print("Login Successful!!!");
    print("Welcome $username");
  } else if (username == "user123" && password != "pass123") {
    print("Incorrect password");
  } else {
    print("User not found");
  }
}

void main() {
  String? username;
  String? password;

  print("Enter Username : ");
  username = stdin.readLineSync()!;

  print("Enter Password : ");
  password = stdin.readLineSync()!;

  loginStatus(username, password);
}
