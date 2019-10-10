import 'dart:html';
import 'dart:math';

void main() {
    exceptionTest();

}

void exceptionTest(){
  divideNums(4, 0);
}
 
void divideNums(int num1, int num2){
  String output = "";
 
  try {
    if(num2 == 0){
      throw new DivideByZeroError("Error");
    } else {
      output += "$num1 / $num2 = ${num1/num2}\n";
    }
  } on DivideByZeroError {
      output += "Can't Divide by Zero\n";
    }
 
  querySelector("#output").text = output;
}
 
class DivideByZeroError implements Exception {
  String cause = "Can't Divide by Zero";
  DivideByZeroError(this.cause);
}