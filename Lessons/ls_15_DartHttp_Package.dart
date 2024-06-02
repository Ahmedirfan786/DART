// Lesson 15: Dart HTTP Package

// Introduction to Dart HTTP Package:
// The Dart HTTP package provides functionalities to make HTTP requests and handle responses, facilitating communication with web servers and APIs.

// Importance of Dart HTTP Package:
// 1. Web Communication: Enables Dart applications to communicate with web servers and consume data from APIs.
// 2. Data Retrieval: Allows fetching data from remote sources, such as JSON data from RESTful APIs.
// 3. Integration: Integrates seamlessly with other Dart packages and frameworks for building web applications.

// Types of Requests:
// 1. GET Requests: Retrieves data from a specified resource.
// 2. POST Requests: Submits data to be processed to a specified resource.
// 3. PUT Requests: Updates data on a specified resource.
// 4. DELETE Requests: Deletes a specified resource.

// Example Usage:
// Making a GET Request:
// import 'package:http/http.dart' as http;
// void main() async {
//   var response = await http.get(Uri.parse('https://api.example.com/data'));
//   print('Response status: ${response.statusCode}');
//   print('Response body: ${response.body}');
// }

// Making a POST Request:
// import 'package:http/http.dart' as http;
// void main() async {
//   var url = Uri.parse('https://api.example.com/data');
//   var response = await http.post(url, body: {'name': 'John', 'age': '30'});
//   print('Response status: ${response.statusCode}');
//   print('Response body: ${response.body}');
// }

// Error Handling:
// HTTP requests may encounter errors due to network issues or server-side problems. It's essential to handle these errors gracefully using try-catch blocks or error-handling mechanisms provided by the Dart HTTP package.

// Conclusion:
// The Dart HTTP package plays a vital role in enabling Dart applications to interact with web servers and APIs. By leveraging HTTP requests and responses, developers can build dynamic and data-driven applications that communicate effectively with remote resources.





// The Code fetching fakejsonplaceholder Api
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  var response = await http.get(url);

  if (response.statusCode == 200) {
    // Decode the response body
    List<dynamic> posts = jsonDecode(response.body);

    // Print each post title
    posts.forEach((post) {
      print('Post Title: ${post['title']}');
    });
  } else {
    print('Failed to load posts. Status code: ${response.statusCode}');
  }
}



// This code sends a GET request to https://jsonplaceholder.typicode.com/posts using the Dart HTTP package.
// It then decodes the response body into a list of dynamic objects representing posts.
// Finally, it iterates over each post and prints its title.
// Make sure to include the http package in your pubspec.yaml file