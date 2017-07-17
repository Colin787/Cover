class SessionsController < ApplicationController

  #MAB: I added this based on an error and a SO article
  skip_before_action :verify_authenticity_token

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to :login
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :login
  end
end
