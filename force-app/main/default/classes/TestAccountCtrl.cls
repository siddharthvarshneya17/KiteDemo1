public class TestAccountCtrl{

    public TestAccountCtrl(ApexPages.StandardController controller) {

    }

    public String accId {get;set;}
    public TestAccountCtrl(){
        accId = ApexPages.currentPage().getParameters().get('id'); 
    }
}