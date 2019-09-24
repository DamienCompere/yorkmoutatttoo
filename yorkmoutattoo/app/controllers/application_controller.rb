class ApplicationController < ActionController::Base
    include SessionsHelper
  
    private
   
    def require_login
      unless logged_in?
        redirect_to root_url # halts request cycle
      end
    end
  
    def require_admin
          unless logged_in?
        redirect_to root_url # halts request cycle
      else
              unless admin?
              redirect_to root_url # halts request cycle
              end
      end
    end
end
