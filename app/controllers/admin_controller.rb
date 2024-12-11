class AdminController < ApplicationController

    def new
      @admin = Admin.new
    end

    def login
      # @admin = Admin.new
    end

    def create
        old_admin = Admin.where(name: admin_params[:name])
      
        if old_admin.exists?
          flash[:alert] = "Admin with this name already exists."
          redirect_to "/"
        else
          @admin = Admin.new(admin_params)
          if @admin.save
            session[:admin_id] = @admin.id
            AdminMailer.with(admin: @admin).welcome_mail.deliver_later
            flash[:success] = "Admin successfully created."
            redirect_to dashboard_path
          else
            flash[:error] = "Failed to create Admin."
            render :new
          end
        end
    end

    def create_session
      user = Admin.find_by(email: params[:email])

      if user.present?
        if user.authenticate(params[:password])
          session[:admin_id] = user.id
          flash[:success] = "Logged in Successfully!"
          redirect_to dashboard_path
        else
          flash[:error] = "Invalid Credentials!"
          redirect_to login_path
        end

      else
        flash[:error] = "Unable to find user. <a href='#{admin_new_path}' class='font-semibold'> Register now!</a>".html_safe
        redirect_to login_path
      end     
    end

    def request22 
    end

    def destroy_session
      if session[:admin_id].present?
        session.clear
        flash[:success] = "Logged out successfully!"
        redirect_to login_path
      else
        flash[:alert] = "You are not logged in!"
        redirect_to root_path
      end
    end

    private
    def admin_params
      params.require(:admin).permit(:name, :email, :password, :password_confirmation)
    end
end