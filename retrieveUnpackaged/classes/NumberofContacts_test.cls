@isTest
public class NumberofContacts_test {

    public static testmethod void testTriggerInsert(){
        Contact c = new Contact (FirstName = 'Joe', LastName = 'Moe');
        insert c;
    }
    
    public static testmethod void testTriggerDelete(){
        Contact c = new Contact (FirstName = 'Joe', LastName = 'Moe');
        delete c;

}

    
    
    }