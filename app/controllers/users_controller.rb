class UsersController < ApplicationController
  #renders the registration page
  def load_registration
    render 'user_registration.html.erb'
  end
  #method for creating a user and checking for the exitance of the persons credentials
  def create_user
    if params[:password].blank?
      flash[:notice] = "Please enter a password."
      redirect_to '/retry_registration'
    elsif session[:email] == params[:email]
      flash[:notice] = "Email is already registered."
      redirect_to '/retry_registration'
    else
      user = User.new(params[:username], params[:password], params[:full_name], params[:address], params[:city], params[:state], params[:zip], params[:country], params[:email])
      session[:email] = params[:email]
      session[:password] = params[:password]
      redirect_to '/register_confirmation'
    end
  end

  def render_register
    render 'register_confirmation.html.erb'
  end

  def log_in
    render 'log_in.html.erb'
  end

  def log_in_result
    #this will eventually turn into an if method that checks user credentials against a existing user credentials.
    if session[:email] != params[:email]
      flash[:notice] = "Email is invalid."
      render 'log_in.html.erb'
    elsif session[:password] != params[:password]
      flash[:notice] = "Password is invalid."
      render 'log_in.html.erb'
    else
      render 'log_in_success.html.erb'

    end

  end

end
