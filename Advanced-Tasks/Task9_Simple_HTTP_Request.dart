import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
  
  if (response.statusCode == 200) {
    Map<String, dynamic> jsonData = json.decode(response.body);
    print('Title: ${jsonData['title']}');
    print('Body: ${jsonData['body']}');
  } else {
    print('Failed to fetch data. Status code: ${response.statusCode}');
  }
}


// Explanation:
// This Dart code demonstrates how to fetch data from a REST API using the http package.
// It imports the http package for making HTTP requests and dart:convert for handling JSON data.
// The main() function serves as the entry point of the program.
// It asynchronously sends a GET request to a specified URL (https://jsonplaceholder.typicode.com/posts/1).
// Upon receiving the response, it checks the status code:
// - If the status code is 200 (HTTP OK), it decodes the JSON response body into a Dart Map using json.decode().
// - It then prints the 'title' and 'body' fields from the decoded JSON data.
// - If the status code is not 200, it prints an error message indicating failure along with the status code.