public with sharing class ctrlAccController {
    //Add new comment new 1
    public list<account> showList {get;set;}
    Public pagereference getshowList(){
        showList = new list<account>([select Id, Name from Account]);
        return null;
    }
}