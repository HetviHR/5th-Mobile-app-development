import 'dart:io';

void main()
{
  print("All the marks are from 100");
  stdout.write("Enter Marks of 1: ");
  var m1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Marks of 2: ");
  var m2 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Marks of 3: ");
  var m3 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Marks of 4: ");
  var m4 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Marks of 5: ");
  var m5 = int.parse(stdin.readLineSync()!);

  var sum = m1+m2+m3+m4+m5;
  var avg = sum/5;
  print("Total of the marks: $sum");
  print("Average of marks: $avg");
  var grade = 'F';
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
