class AdminController < ApplicationController

    def new
      @admin = Admin.all
    end

    def login

    end

    def create
        old_admin = Admin.where(name: admin_params[:name])
      
        if old_admin.exists?
          flash[:alert] = "Admin with this name already exists."
          redirect_to "/"
        else
          @admin = Admin.new(admin_params)
          if @admin.save
            flash[:notice] = "Admin successfully created."
            redirect_to dashboard_path
          else
            flash[:alert] = "Failed to create Admin."
            render :new
          end
        end
    end

    def create_session
        user = Admin.authenticate(params[:email], params[:password])
        if user
            session[:admin_id] = user.id
            redirect_to dashboard_path
          else
            flash.now[:alert] = 'Invalid email/password combination'
            render 'new'
          end
    end

    private
    def admin_params
      params.require(:admin).permit(:name, :email, :password, :password_confirmation)
    end
end