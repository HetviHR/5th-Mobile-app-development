import 'dart:io';

void main()
{
  print("Enter 3 values");
  var num1 = int.parse(stdin.readLineSync()!);
  var num2 = int.parse(stdin.readLineSync()!);
  var num3 = int.parse(stdin.readLineSync()!);

  // var mytotal = doSum(70,85,90);
  // print("Sum is $mytotal");
  // var myper = doPrec(mytotal);
  // print("Percentage is $myper %");
  // var ans2 = doMul(10, 20);
  // print("Multiplication 10 and 20 is $ans2");
  // calcgrade(myper);
  var mytotal1 = doSum(num1,num2,num3);
  print("Sum is $mytotal1");
  var myper1 = doPrec(mytotal1);
  print("Percentage is $myper1 %");
  var ans1 = doMul(num1, num2);
  print("Multiplication 10 and 20 is $ans1");
  calcgrade(myper1);

}

doSum(a,b,c)
{
  var d=a+b+c;
  return d;
  }

doPrec(e)
{
  var ans = e/300*100;
  return ans;
}

doMul(a,b)=>a*b;


calcgrade(avg)
{
  var grade;
    if(avg>=80)
  {
    grade = 'A';
  }
  else if(avg<80 && avg>=60){
    grade = 'B';
  } 
  else if(avg<60 && avg>=40)
  {
    grade = 'C';
  }
  else{
    grade = 'D';
  }
  print("Your grade is: $grade");

}
