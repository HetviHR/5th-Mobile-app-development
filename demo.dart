import 'dart:io';

void main()
{
  stdout.write("Enter No. 1: ");
  var a = int.parse(stdin.readLineSync()!);
  print("Enter No. 2");
  var b = int.parse(stdin.readLineSync()!);
  var c = a + b;
  print("Sum is $c");

}