import 'dart:io';

void main() {
  print('Enter a message to translate to Morse code:');
  String input = stdin.readLineSync()!.toLowerCase();

  String morseCode = textToMorse(input);
  print('Message in Morse code: $morseCode');
}

String textToMorse(String text) {
  Map<String, String> morseCodeMap = {
    'a': '.-', 'b': '-...', 'c': '-.-.', 'd': '-..', 'e': '.', 'f': '..-.', 
    'g': '--.', 'h': '....', 'i': '..', 'j': '.---', 'k': '-.-', 'l': '.-..', 
    'm': '--', 'n': '-.', 'o': '---', 'p': '.--.', 'q': '--.-', 'r': '.-.', 
    's': '...', 't': '-', 'u': '..-', 'v': '...-', 'w': '.--', 'x': '-..-', 
    'y': '-.--', 'z': '--..', '0': '-----', '1': '.----', '2': '..---', 
    '3': '...--', '4': '....-', '5': '.....', '6': '-....', '7': '--...', 
    '8': '---..', '9': '----.', ' ': '/'
  };

  List<String> morseCodeList = [];
  for (int i = 0; i < text.length; i++) {
    String char = text[i];
    String morseChar = morseCodeMap[char] ?? '';
    morseCodeList.add(morseChar);
  }
  return morseCodeList.join(' ');
}


// Explanation:
// The textToMorse function converts a given text message into Morse code.
// It uses a predefined map (morseCodeMap) where each key represents a character
// (including letters, digits, and space) and the corresponding value is its Morse code representation.
// Each character in the input text is processed individually to retrieve its Morse code
// from the morseCodeMap, appending each Morse code representation to morseCodeList.
// Finally, morseCodeList is joined into a single string separated by spaces and returned as the Morse code representation of the input text.