public class NumberofContactsTriggerHandler {
   
    public static void handleAfterInsert(List<Contact> newContacts){
        Set<Id> AccountIds = new Set<Id>();
		List<Account> listacct = new List<Account>();
    
    if((trigger.isAfter) && (trigger.isInsert || trigger.isUpdate)){   
		for(Contact c : newContacts){
			AccountIds.add(c.AccountId);
		}
       
	Map<Id, Account> idToAccount = new Map<Id, Account>
        ([SELECT Id, Name, Number_of_Contacts__c,
          (SELECT Id FROM Contacts) 
          FROM Account 
          WHERE Id =: accountIds]);
   
    for(Contact c : newContacts){
		Account a = idToAccount.get(c.AccountId);
    	Account acc = new Account();
		acc.Id = a.Id;
    	acc.Number_of_Contacts__c = a.contacts.size();
		listacct.add(acc);	
	}
        Update listacct;
    }
    }
    
    public static void handleAfterUpdate(List<Contact> newContacts){
        Set<Id> AccountIds = new Set<Id>();
		List<Account> listacct = new List<Account>();

	  if((trigger.isAfter) && (trigger.isUpdate)){
    	for(Contact c : newContacts){
			AccountIds.add(c.AccountId);
		}	
		Map<Id, Account> idToAccount = new Map<Id, Account>
        	([SELECT Id, Name, Number_of_Contacts__c,
          	(SELECT Id FROM Contacts) 
          	FROM Account 
          	WHERE Id =: accountIds]);
   
    	for(Contact c : newContacts){
			Account a = idToAccount.get(c.AccountId);
    		Account acc = new Account();
			acc.Id = a.Id;
    		acc.Number_of_Contacts__c = a.contacts.size();
			listacct.add(acc);
    	}
        Update listacct; 
       
    }
    }
    
    public static void handleAfterDelete(List<Contact> newContacts){
        Set<Id> AccountIds = new Set<Id>();
		List<Account> listacct = new List<Account>();
       
	 if((trigger.isAfter) && (trigger.isDelete)){
    	for(Contact c : newContacts){
			AccountIds.add(c.AccountId);
		}	
		Map<Id, Account> idToAccount = new Map<Id, Account>
        	([SELECT Id, Name, Number_of_Contacts__c,
          	(SELECT Id FROM Contacts) 
          	FROM Account 
          	WHERE Id =: accountIds]);
   
    	for(Contact c : newContacts){
			Account a = idToAccount.get(c.AccountId);
    		Account acc = new Account();
			acc.Id = a.Id;
    		acc.Number_of_Contacts__c = a.contacts.size();
			listacct.add(acc);
    	}
        Update listacct; 
       
    }
    }
}