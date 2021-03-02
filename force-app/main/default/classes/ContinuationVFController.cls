public class ContinuationVFController {//new 1234
	 public String requestLabel;    
    public String result {get;set;}
    private static final String LONG_RUNNING_SERVICE_URL = 'https://api.github.com/users/hadley/orgs';
    public Boolean statusBool {get;set;}
    
    public ContinuationVFController() {
        statusBool = false;
    }
       
    // Action method
    public Object startRequest() {
        statusBool = true;
        Continuation con = new Continuation(40);
        // Set callback method
        con.continuationMethod='processResponse';
        HttpRequest req = new HttpRequest();
        req.setMethod('GET');
        req.setEndpoint(LONG_RUNNING_SERVICE_URL);
        this.requestLabel = con.addHttpRequest(req);
        
        return con;  
    }
    
    // Callback method 
    public Object processResponse() {   
        statusBool = false;
        HttpResponse response = Continuation.getResponse(this.requestLabel);
        this.result = response.getBody();
        return null;
    }
}
