class UsersController < ApplicationController
  def new
<<<<<<< HEAD
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      # redirect_to '/signup'
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
=======
  end

  def create
    user = User.new(user_params)
    if user.save!
      session[:users_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  def show
  end

  private

  def user_params
    params.require(:users).permit(:name, :email, :password, :password_confirmation)
>>>>>>> c77762e5c106a3409b0d792b6dfcb618a6e8434e
  end
end
