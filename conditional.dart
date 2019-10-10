import 'dart:html';
import 'dart:math';

void main() {
	condTest();
	loopTest();
	stringTest();

	
}
void condTest(){
// Relational Operators : ==, !=, >, <, >=, <=
// Logical Operators : &&, ||, !
 
  String output = "";
 
  var age = 13;
 
  if((age >= 5) && (age <= 6)){
    output = "Go to Kindergarten\n";
  } else if (age > 18){
    output = "Go to College\n";
  } else {
    output = "Go to Grade ${age - 5}\n";
  }
 
  output += "!(true) = ${!(true)}\n";
  output += "true || false = ${(true || false)}\n";
 
  // Use switch when you have a limited number of possibilities
  String superhero = "Superman";
 
  switch(superhero){
    case "Batman":
      output += "Batman is Bruce Wayne\n";
      break; // Leave switch statement
    case "Superman":
      output += "Superman is Clark Kent\n";
      break;
    // If nothing else matches
    default:
      output += "Hero isn't in database\n";
  }
 
 
  querySelector("#output").text = output;
 
}

void loopTest(){
  String output = "";
 
  int i = 0;
 
  while(i <= 10){
    output += "${i}, ";
 
    // Add 1 shortcut
    i++;
  }
  output += "\n";
 
  // do while is used when you have to go through the loop once
  do {
      output += "${i}, ";
      i--;
    }while(i > 0);
 
  output += "\n";
 
  // for is a self contained loop structure
  // Variables like j are not available outside of the for loop
  for(int j = 1; j <= 30; j++){
 
    // If j is a multiple of 4 skip the rest of the loop
    if((j % 4) == 0){
      continue;
    }
 
    // If j = 25 jump out of the loop completely
    if(j == 25){
      break;
    }
 
    // If j is even print it
    if((j % 2) == 0){
      output += "${j}, ";
    }
  }
  output += "\n";
 
  // Create a multiplication table with 2 fors
  for(int k = 0; k <= 10; k++){
    for(int l = 0; l <= 10; l++){
      output += "${k} * ${l} = ${k*l}\n";
    }
  }
 
  querySelector("#output").text = output;
}

void stringTest(){
  String output = "";
 
  // Concatenate strings
  String randString = "I " + "am a long " + "string";
  String randString2 = "Other random string";
 
  output += "0 Index : ${randString[0]}\n";
 
  // comapreTo returns a 0 if strings are equal
  output += "Strings equal ${randString.compareTo(randString2)}\n";
 
  // Check if string conatins word starting at index 0
  output += "Word long in string : ${randString.contains("long", 0)}\n";
 
  // Get the index of the match or -1
  output += "Index of long : ${randString.indexOf("long")}\n";
 
  // Replace all of 1 with another
  output += "Replace spaces : ${randString.replaceAll(" ", ", ")}\n";
 
  // Split string into a list
  List listWords = randString.split(" ");
 
  // Length of string
  output += "String Length : ${randString.length}\n";
 
  // Get substring at starting index to defined length
  output += "Index 0 - 4 : ${randString.substring(0,4)}\n";
 
  // To lower and uppercase
  output += "Uppercase : ${randString.toUpperCase()}\n";
  output += "Lowercase : ${randString.toLowerCase()}\n";
 
  // trim leading and trailing whitespace
  randString = randString.trim();
 
  // trim leading or trailing whitespace
  randString = randString.trimLeft();
  randString = randString.trimRight();
 
  // Check if string is empty
  output += "Is Empty : ${randString.isEmpty}\n";
 
  querySelector("#output").text = output;
}