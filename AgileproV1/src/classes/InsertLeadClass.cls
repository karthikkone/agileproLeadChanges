public class InsertLeadClass {
    public void insertMyLead(){
        try{
            insertLeads();
        } 
        catch(InsertLeadClassException ilce){
            system.debug('The error is '+ilce.getMessage()); //give the friendly error message
             system.debug('The cause is '+ilce.getCause()); //give the cause of the exception
            system.debug('The Line number is '+ilce.getLineNumber()); // give the line number at which the exception occurred
        }
    }
    public static void insertLeads(){
        Lead myLeads=new Lead();
        myLeads=new Lead();
        myLeads.firstName='Shovan';
        myLeads.leadSource='Web';
        try{
        insert myLeads;
        }
        catch(DMLException e){
           throw new InsertLeadClassException('Lead Couldnot be inserted ',e);
        }
    }
}