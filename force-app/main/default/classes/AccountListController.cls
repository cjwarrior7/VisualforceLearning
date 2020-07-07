public with sharing class AccountListController {
public AccountListController() {

}
public ApexPages.StandardSetController acct{
    get{ if(acct==null){
        acct =new ApexPages.StandardSetController(Database.getQueryLocator([Select id, Industry , AccountNumber , Name From Account ])) ;
    }
        return acct ;
    }
    set;
}
public List<Account> getAccounts(){
    return (List<Account>)acct.getRecords(); 
}
}
