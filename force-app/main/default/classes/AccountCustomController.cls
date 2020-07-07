public  class AccountCustomController {
private final Account account ;
public AccountCustomController() {
    account= [Select id , Name ,Site from Account where id=: ApexPages.currentPage().getParameters().get('id')] ;
}
public Account getAccount(){
    return account;
}
public Pagereference saveAccount(){
    update account;
    return null;
}
}
