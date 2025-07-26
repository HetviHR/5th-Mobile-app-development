void main()
{
  Bank tran = Bank(1000);

  tran.deposit(1800);
  tran.getBalance();
  tran.withdraw(200);
  tran.getBalance();
  tran.withdraw(2000);
  tran.getBalance();


}


class Bank {
  dynamic amount;
  Bank(amount)
  {
    this.amount = amount;
  }

  deposit(amount)
  {
    this.amount += amount;
  }
  getBalance()
  {
    print("The total balance in the account is: ${this.amount}");
  }
  withdraw(amount)
  {
    if(this.amount - amount < 1000)
    {
      print("Sorry!! you can't withdraw money. Not enough amount");
    }
    else{
      this.amount -= amount;
    }
  }
}