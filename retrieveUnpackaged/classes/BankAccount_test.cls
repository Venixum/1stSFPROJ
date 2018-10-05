@isTest
public class BankAccount_test {
    
    public static testmethod void testAccountBalance(){
        BankAccount bac = new BankAccount ('Joes Account', 5.50);
    }
        
    public static testmethod void testDepositAccount(){
        BankAccount bac = new BankAccount ('Joes Account', 0);
        System.assertEquals(5.50 + 0, bac.depositAcc(5.50));
    }
       
    public static testmethod void testWithdrawAccount(){
        BankAccount bac = new BankAccount ('Joes Account', 6.0);
        System.assertEquals(5.50 - 6.0, bac.withdrawAcc(5.50));
    }
    
    
    
    
        }