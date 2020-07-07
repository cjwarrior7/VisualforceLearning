public class NewAndExistingController {
public Account account{ get ; private set ;}
public NewAndExistingController() {
    Id id= ApexPages.currentPage().getParameters().get('id');
    account=(id==null)? new Account():[Select name, phone , industry from Account where Id=:id] ;
}
public Pagereference save(){
    try{ 
        upsert(account);//  upsert means update or insert if it update operation it is updated or if it is insert it is insert operation
    }
    catch(DMLException e){
        ApexPages.addMessages(e);
        return null;
    }
    Pagereference redirectsuccess =new ApexPages.StandardController(Account).view() ; // Go To the account view Page
    return redirectsuccess ;
}
}
