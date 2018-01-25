public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String reversedWord = formatWord(reverse(word));
  if(formatWord(word).equals(reversedWord)) {
    return true;
  }
  return false;
}

public String formatWord(String str) {
  str = removeSpaces(str);
  str = removeNonLetters(str);
  str = toLowerCase(str);
  return str;
}

public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length() - 1; i >= 0; i--) {
      sNew += str.charAt(i);
    }
    return sNew;
}

public String removeSpaces(String sWord) {
  String str = new String();
  for(int i = 0; i < sWord.length(); i++) {
    if(!(sWord.substring(i, i+1).equals(" "))) {
      str = str + sWord.substring(i, i+1);
    }
  }
  return str;
}

public String toLowerCase(String sWord) {
  return sWord.toLowerCase();
}

public String removeNonLetters(String sWord) {
  String str = new String();
  for(int i = 0; i < sWord.length(); i++) {
    if(Character.isLetter(sWord.charAt(i))) {
      str = str + sWord.charAt(i);
    }
  }
  return str;
}