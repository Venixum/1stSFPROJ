public class standardAccountExtension {
public List<Contact> relatedContacts {get; set;}
    public standardAccountExtension(ApexPages.StandardController controller) {
Account acct = (Account) controller.getRecord();
relatedContacts = [SELECT Name, Phone, Email FROM Contact WHERE AccountId = :acct.Id];
    }

}