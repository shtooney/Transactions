public class GrabMyTransactions {
    
    @AuraEnabled
    public static List<Transaction__b> getTransactions(){

        List<Transaction__b> myList = [SELECT ID__c, Amount__c, Type__c FROM Transaction__b LIMIT 5];        

		return myList;
    }

}
