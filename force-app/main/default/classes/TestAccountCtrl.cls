public class TestAccountCtrl{
    //add new comment 2166666
    public TestAccountCtrl(ApexPages.StandardController controller) {

    }

    public String accId {get;set;}
    public TestAccountCtrl(){
        accId = ApexPages.currentPage().getParameters().get('id'); 
    }
}