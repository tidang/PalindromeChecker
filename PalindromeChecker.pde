public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }

}
public boolean palindrome(String word)
{
  String newWord = lowerCase(word);
  String newWord2 = noSpace(newWord);
  String finalWord = onlyLetters(newWord2);
  
  if(finalWord.equals(reverse(word)))
    return true;
    else
  return false;
}
public String reverse(String str)
{
    String sNew = "";
    String newWord = lowerCase(str);
    String newWord2 = noSpace(newWord);
    String finalWord = onlyLetters(newWord2);
    int last = finalWord.length() - 1;
    for(int i = last; i >= 0; i--){
      sNew = sNew + finalWord.substring(i, i + 1);
    }
    return sNew;
}

public String lowerCase(String haha){
 
    return haha.toLowerCase();
}

public String noSpace(String haha){
 
    String noSpace = "";
  for(int i = 0; i < haha.length(); i++){
    
    if(!haha.substring(i, i + 1).equals(" ")){
      noSpace = noSpace + haha.substring(i, i + 1); 
    }
  }
  return noSpace;
  
}

public String onlyLetters(String sString){
  
  String letters = "";
  
  for(int i = 0; i < sString.length(); i++){
    
    if(Character.isLetter(sString.charAt(i))){
      letters = letters + sString.substring(i, i + 1);
    }
  }
  return letters;
}
