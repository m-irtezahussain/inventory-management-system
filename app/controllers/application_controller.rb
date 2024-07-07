class ApplicationController < ActionController::Base

    def auth
        @current_user = Admin.find_by(id: session[:admin_id])
        unless @current_user
          flash[:alert] = 'You need to log in to access this page.'
          redirect_to login_path
        end
      end
end
