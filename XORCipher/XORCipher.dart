#library('CipherLib');

int key = 1337;
String EncryptDecrypt(String text)
{
    List<int> charCodes = new List<int>();
    for (int i = 0; i < text.length; i++)
    {
        charCodes.add(text.charCodeAt(i) ^ key);
    }

    return new String.fromCharCodes(charCodes);
}