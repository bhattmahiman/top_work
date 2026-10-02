/* Use ChatGPT to generate a Dart code snippet that asks the user for their favorite food from a list ('Pizza', 'Burger', 'Dosa', 'Biryani'), then uses a switch-case to print a unique message for each food. Paste the generated code into your Dart file and test it.<br><br><em><strong>Hint:</strong> Prompt ChatGPT with: 'Write a Dart function that takes a food name as input and prints a special message for each using switch-case.'</em> */

import 'dart:io';

void showFoodMessage(String food) {
  switch (food.toLowerCase()) {
    case "pizza":
      print("Pizza: A delicious cheesy choice!");

      break;

    case "burger":
      print("Burger: A tasty and filling meal!");

      break;

    case "dosa":
      print("Dosa: A crispy and delicious South Indian favorite!");

      break;

    case "biryani":
      print("Biryani: A flavorful and aromatic feast!");

      break;

    default:
      print("Invalid food! Please choose Pizza, Burger, Dosa, or Biryani.");
  }
}

void main() {
  print("Choose your favorite food:");
  print("Pizza");
  print("Burger");
  print("Dosa");
  print("Biryani");

  print("Enter your favorite food:");

  String? food = stdin.readLineSync();

  showFoodMessage(food ?? "");
}
