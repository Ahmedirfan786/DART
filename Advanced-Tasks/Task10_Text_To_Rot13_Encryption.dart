import 'dart:convert';
import 'dart:io';

void main() {
  stdout.write('Enter a text to encrypt/decrypt using Rot13: ');
  String input = stdin.readLineSync()!;
  
  String encryptedText = encryptRot13(input);
  print('Encrypted: $encryptedText');
  
  String decryptedText = encryptRot13(encryptedText); // Decrypting Rot13 is the same as encrypting
  print('Decrypted: $decryptedText');
}

String encryptRot13(String input) {
  return input.replaceAllMapped(RegExp(r'[a-zA-Z]'), (match) {
    String char = match.group(0)!;
    String base = char.toUpperCase() == char ? 'A' : 'a';
    int offset = char.codeUnitAt(0) - base.codeUnitAt(0);
    int shiftedOffset = (offset + 13) % 26;
    int shiftedCodeUnit = base.codeUnitAt(0) + shiftedOffset;
    return String.fromCharCode(shiftedCodeUnit);
  });
}


// Explanation:
// - This function applies the Rot13 substitution cipher to each alphabetic character in the input string.
// - Rot13 is a simple encryption technique where each letter in the alphabet is shifted by 13 places.
// - Non-alphabetic characters (such as digits or punctuation) remain unchanged.
//
// Purpose:
// - Encrypts a given input string using Rot13 encryption.
//
// How it works:
// - For each alphabetic character in the input string:
//   - Determines whether the character is uppercase or lowercase.
//   - Computes the new character by shifting it by 13 positions in the alphabet.
//   - Wraps around within the alphabet (e.g., 'z' shifted by 13 becomes 'm').
// - Returns the encrypted string with alphabetic characters replaced by their Rot13 equivalents.
//
// Example:
// - Input: "Hello, world!"
// - Output: "Uryyb, jbeyq!"
//
// Note:
// - This function does not encrypt non-alphabetic characters and leaves them unchanged.

