class HomeController < ApplicationController

  before_action :authorize, only: [:index]
  def index
  end

  def login
  end

  def create
    puts params.to_json
    user = User.find_by(email: params[:email])
 # If the user exists AND the password entered is correct.
 if user && user.authenticate(params[:password])
   # Save the user id inside the browser cookie. This is how we keep the user
   # logged in when they navigate around our website.
   session[:user_id] = user.id
   redirect_to root_path

 else
 # If user's login doesn't work, send them back to the login form.
   redirect_to '/login'
 end
  end

def destroy
  session[:user_id] = nil
  flash[:notice] = "You have successfully logged out."
  redirect_to '/login'
end
end
