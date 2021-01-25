public class SampleAccConListController {
    @auraEnabled
    public static List<Wrapper> lstData(){
        List<Wrapper> lst = new List<Wrapper>();
        Wrapper objWrapper;
        for(Account obj : [Select Id,Name From Account Limit 10]){
            objWrapper = new Wrapper();
            objWrapper.acc = obj;
            lst.add(objWrapper);
        }
        Integer i =0;
        for(Contact obj : [Select Id,Name From Contact Limit 10]){
            objWrapper = lst.get(i);
            i++;
            objWrapper.con = obj;
        }
        return lst;
    }
	
    public class Wrapper{
        @auraEnabled
        public Account acc{get;set;}
        @auraEnabled
        public Contact con{get;set;}
    } 
}