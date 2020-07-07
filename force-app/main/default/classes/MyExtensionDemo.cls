public class MyExtensionDemo {
    private Account acct;
    public MyExtensionDemo(ApexPages.StandardController  stdController) {
     acct=(Account)stdController.getRecord(); // getRecord method by default defined inside the standard controller
    }
    public String getGreeting(){
        return 'hello '+acct.name+'('+acct.id+')';
    }
}
