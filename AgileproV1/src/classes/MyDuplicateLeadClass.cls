public class MyDuplicateLeadClass {
public Lead myLead{get; set;}

    public MyDuplicateLeadClass(ApexPages.StandardController controller) {
    myLead= new Lead();
    }
    public PageReference duplicateLeadCheck()
    {
    List<Lead> existingLeads=[Select Email from Lead where Email=:myLead.Email];
    if(existingLeads.size()>0)
    {
    myLead.Email.addError('Lead already Exists');
    }
    return null;
    }
    public PageReference save()
    {
      insert myLead;
      PageReference p = new ApexPAges.StandardController(myLead).view();
      return p;
    }
    
}