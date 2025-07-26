void main()
{
  print("Starting values..");
  pri_10(1);
}

pri_10(x)
{
  if(x>10)
  {
    return;
  }
  print(x);
  x++;
  pri_10(x);
}