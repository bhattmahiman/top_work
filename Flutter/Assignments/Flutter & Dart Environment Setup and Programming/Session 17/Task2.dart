/* Write a reusable Dart function called calculateDiscountedPrice that accepts the original price and discount percentage, and returns the final price after applying the discount. Test it with a Flipkart-style scenario: original price ₹1500, discount 20%. */

double calculateDiscountedPrice(
  double originalPrice,
  double discountPercentage,
) {
  double discount = originalPrice * discountPercentage / 100;
  return originalPrice - discount;
}

void main() {
  double originalPrice = 1500;
  double discountPercentage = 20;

  double finalPrice = calculateDiscountedPrice(
    originalPrice,
    discountPercentage,
  );

  print("Original Price: ₹$originalPrice");
  print("Discount: $discountPercentage%");
  print("Final Price: ₹$finalPrice");
}
