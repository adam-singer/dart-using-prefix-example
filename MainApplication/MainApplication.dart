#import('../CaesarCipher/CaesarCipher.dart', prefix:"Caesar");
#import('../XORCipher/XORCipher.dart', prefix:"XOR");

void main() {
  String s = "HELLOWORLD";
  print("${s}");
  
  s = XOR.EncryptDecrypt(s);
  print("After encrypt XOR ${s}");
  s = XOR.EncryptDecrypt(s);
  print("After decrypt XOR ${s}");
 
  s = Caesar.EncryptDecrypt(s, true);
  print("After encrypt Caesar ${s}");
  s = Caesar.EncryptDecrypt(s, false);
  print("After decrypt Caesar ${s}");
}
