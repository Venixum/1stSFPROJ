public virtual class BankAccount {

    private Decimal balance = 0;
    Public String accountId;
    
    public BankAccount(String accId, Decimal depAmount)
    {
        this.accountId=accId;
        this.balance = depAmount;
    }
	public Decimal depositAcc(Decimal amount)
    {
        balance += amount;
        return balance;
    }
    
    public Decimal withdrawAcc(Decimal amount)
    {
        if(amount <= balance)
        {
            balance -= amount;
        }
        else throw new UnsupportedOperationException('error insufficient funds');
        return balance;
    }
    private void setBalance(decimal amount)
    {
        balance = amount;
    }
    
    private decimal getBalance()
    {
        return balance;
    }
    }