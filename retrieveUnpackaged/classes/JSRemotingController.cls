public class JSRemotingController {
    public List<Account> accounts {get; set;}
    public List<Contact> contacts {get; set;}
    
    public JSRemotingController(){
        getAllAccounts();
    }
    
    public void getContactsByAccountId() {
        contacts = [SELECT FirstName, LastName, Email, Phone FROM Contact WHERE AccountId = :acctId];
        }
    
    public PageReference getAllAccounts(){
        accounts = [SELECT Id, Name, BillingState, Industry, Rating, Type, CreatedDate FROM Account];
        return ApexPages.currentPage();
    }
    
    public String acctId {get; set;}
    public String selectedHeader {get; set;} 
    public String selectedField {get; set;}
    public String nameSortOrder = 'ASC';
    public String industrySortOrder = 'ASC';
    public String ratingSortOrder = 'ASC';
    
    public void sortMethod(){
    if (selectedField == 'Account Name' && nameSortOrder == 'ASC'){
            accounts = [SELECT Id, Name, BillingState, Industry, Rating, Type, CreatedDate FROM Account ORDER BY Name DESC];
            
    nameSortOrder = 'DESC';
    industrySortOrder = 'DESC';
    ratingSortOrder = 'DESC';
    }
    
    else if (selectedField == 'Account Name' && nameSortOrder == 'DESC'){
        accounts = [SELECT Id, Name, BillingState, Industry, Rating, Type, CreatedDate FROM Account ORDER BY Name];
        
    nameSortOrder = 'ASC';
    industrySortOrder = 'DESC';
    ratingSortOrder = 'DESC';
    }
    
    else if (selectedField == 'Industry' && industrySortOrder == 'ASC'){
        accounts= [SELECT Id, Name, BillingState,Industry, Rating, Type, CreatedDate FROM Account ORDER BY Industry DESC];
        
        industrySortOrder = 'DESC';
        nameSortOrder = 'DESC';
        ratingSortOrder = 'DESC';
        }
        
        else if (selectedField == 'Industry' && industrySortOrder == 'DESC'){
            accounts = [SELECT Id, Name, BillingState, Industry, Rating, Type, CreatedDate FROM Account ORDER BY Industry];
            
            industrySortOrder = 'ASC';
            nameSortOrder = 'DESC';
            ratingSortOrder = 'DESC';
            }
            
            else if (selectedField == 'Rating' && ratingSortOrder == 'ASC'){
                accounts = [SELECT Id, Name, BillingState, Industry, Rating, Type, CreatedDate FROM Account ORDER BY Rating DESC];
                
                ratingSortOrder = 'DESC';
                nameSortOrder = 'DESC';
                industrySortOrder = 'DESC';
                }
                
            else if (selectedField == 'Rating' && ratingSortOrder == 'DESC'){
                accounts = [SELECT Id, Name, BillingState, Industry, Rating, Type, CreatedDate FROM Account ORDER BY Rating];
                
                ratingSortOrder = 'ASC';
                nameSortOrder = 'DESC';
                industrySortOrder = 'DESC';
}
}
}