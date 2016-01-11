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
    String reverse = new String();
    int nLast = word.length()-1;

    for(int nI=nLast; nI>=0; nI--){
        reverse = reverse + word.substring(nI,nI+1); 
    }
    if (word.replaceAll("[^a-zA-Z]", "").toLowerCase().equals(reverse.replaceAll("[^a-zA-Z]", "").toLowerCase())) {
      return true;
    }  
    return false;
}

