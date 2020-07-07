public with sharing class CustomListController {
    public CustomListController() {

    }
    public ApexPages.StandardSetController opps{
        get{ if(opps==null){
            opps =new ApexPages.StandardSetController(Database.getQueryLocator([Select id, Name , Amount ,CloseDate From Opportunity ])) ;
        }
           return opps ;
        }
        set;
    }
    public List<Opportunity> getOpportunities(){
        return (List<Opportunity>)opps.getRecords(); 
    }
}
