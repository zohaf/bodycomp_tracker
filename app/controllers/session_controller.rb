class SessionController < ApplicationController
    def new
    end
  
    def create
      user = User.find_by :email => params[:email]
      if user.present? && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to '/logbooks/new'
      else
        flash[:error] = "Invalid username or password"
        redirect_to login_path
      end
    end
  
    def destroy
      session[:user_id] = nil
      redirect_to login_path # or the root_path: IT'S UP TO YOU
    end
end
