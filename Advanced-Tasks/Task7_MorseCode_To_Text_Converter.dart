import 'dart:io';

void main() {
  print('Enter Morse code to translate to English:');
  String input = stdin.readLineSync()!.trim();

  String englishText = morseToText(input);
  print('Message in English: $englishText');
}

String morseToText(String morseCode) {
  Map<String, String> morseCodeMap = {
    '.-': 'a', '-...': 'b', '-.-.': 'c', '-..': 'd', '.': 'e', '..-.': 'f',
    '--.': 'g', '....': 'h', '..': 'i', '.---': 'j', '-.-': 'k', '.-..': 'l',
    '--': 'm', '-.': 'n', '---': 'o', '.--.': 'p', '--.-': 'q', '.-.': 'r',
    '...': 's', '-': 't', '..-': 'u', '...-': 'v', '.--': 'w', '-..-': 'x',
    '-.--': 'y', '--..': 'z', '-----': '0', '.----': '1', '..---': '2',
    '...--': '3', '....-': '4', '.....': '5', '-....': '6', '--...': '7',
    '---..': '8', '----.': '9', '/': ' '
  };

  List<String> morseWords = morseCode.split(' / ');
  List<String> textList = [];

  for (String morseWord in morseWords) {
    List<String> morseChars = morseWord.split(' ');
    List<String> chars = [];

    for (String morseChar in morseChars) {
      String? englishChar = morseCodeMap[morseChar];
      if (englishChar != null) {
        chars.add(englishChar);
      } else {
        chars.add('?'); // Handle unrecognized Morse code characters
      }
    }

    textList.add(chars.join(''));
  }

  return textList.join(' ').trim();
}


// Explanation:
// - The main function prompts the user to enter Morse code input and reads the input.
// - It calls the morseToText function to convert the Morse code input into English text.
// - Finally, it prints the translated English text.

// - The morseToText function takes a Morse code string (`morseCode`) as input and returns its English translation.
// - It uses a map (`morseCodeMap`) to look up each Morse code sequence and translate it into its corresponding English character.
// - Morse code input is split into individual words (`morseWords`) using ' / ' as the delimiter.
// - Each Morse code word is further split into Morse code characters (`morseChars`) using ' ' as the delimiter.
// - Each Morse code character is looked up in `morseCodeMap` to find its English equivalent.
// - If a valid English character is found, it is added to a list (`chars`). If not, '?' is added as a placeholder.
// - Decoded English words are joined into a list (`textList`), which is then joined into a final translated text string.
// - The function returns the trimmed final translated text.