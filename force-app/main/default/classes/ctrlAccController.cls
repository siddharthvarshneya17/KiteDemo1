public with sharing class ctrlAccController {

    public list<account> showList {get;set;}
    Public pagereference getshowList(){
        showList = new list<account>([select Id, Name, Active__c from Account]);
        return null;
    }
}