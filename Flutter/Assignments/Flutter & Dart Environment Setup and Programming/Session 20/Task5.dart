/* Use ChatGPT or GitHub Copilot to generate Dart code for an async function that fetches cricket match scores after a 1.5-second delay and handles possible errors with try-catch. Paste the generated code, then run and test it in your own Dart environment. */

Future<String> fetchCricketScore() async {
  try {
    // Simulate a 1.5-second API call
    await Future.delayed(Duration(milliseconds: 1500));

    // Simulate a successful response
    return "India: 185/4 (20 overs)";
  } catch (e) {
    throw Exception("Failed to fetch cricket score");
  }
}

void main() async {
  print("Fetching cricket match score...");

  try {
    String score = await fetchCricketScore();
    print("Match Score: $score");
  } catch (e) {
    print("Error: $e");
  }
}
