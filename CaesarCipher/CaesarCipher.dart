#library('CipherLib');

String EncryptDecrypt(String text, bool encrypt) {
  var alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".splitChars();
  int shift = 3;
  StringBuffer charCodes = new StringBuffer();
  for (int i = 0; i < text.length; i++) {
    if (encrypt) {
      charCodes.add(alphabet[(text.charCodeAt(i) + shift).remainder(26).abs()]);
    } else {
      charCodes.add(alphabet[(text.charCodeAt(i) - shift).remainder(26).abs()]);
    }
  }

  return charCodes.toString();
}

