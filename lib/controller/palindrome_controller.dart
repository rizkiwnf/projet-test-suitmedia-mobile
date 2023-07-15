void main(){
palindromeCheck("eye")?print("Palinfrome") : print("notPalindrome");
}
bool palindromeCheck(String inputString){
  return inputString == inputString.split("").reversed.join();
}