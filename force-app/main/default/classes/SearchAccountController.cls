public class SearchAccountController {
	@auraenabled
    public static List<Account> getAccounts(String searchStr){
        system.debug('==searchStr=='+searchStr);
        List<Account> lstAccount = [SELECT Id,Name FROM Account where Name =: searchStr];
         system.debug('==lstAccount=='+lstAccount);
        return lstAccount;
    } 
}