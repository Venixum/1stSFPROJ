public class SavingsAccount extends BankAccount {

    List <BankAccount> bList;
    public SavingsAccount(String savId, Decimal savdepamt)
    {
	super (savId, savdepamt);
        this.bList = new List <BankAccount>();
            }
    
    public void addSavingsAccount (BankAccount sacct)
    {
       bList.add(sacct);
        
    }
}