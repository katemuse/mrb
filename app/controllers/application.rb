# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time      
  # helper_method :admin?     

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '23ad4e90ea91cea32307ddef21ad7320'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password     
  
protected   
   #set boolean according to session data set in authenticate method
    def is_authenticated?
      @is_authenticated = true if session[:username] 
      @username = session[:username]
    end   

  def authenticate 
   #check to see if already authenticated by checking session 
    if session[:username] 
          flash[:notice] = 'authenticated'   
          return true  #exit method
    else
       #flash[:notice] = 'not authenticated'                           
    #if not authenticated then authenticate to hard-coded (change this later!)
       @is_authenticated = authenticate_or_request_with_http_basic do |username, password| 
         username == 'nina' && password == 'flavia' 
       end
        # set session username if authenticate_with_http_basic returns true  
       session[:username] = 'nina' if @is_authenticated    
       return @is_authenticated   #@is_authenticated is boolean   
    end                                                     
                                                            
  end

end
