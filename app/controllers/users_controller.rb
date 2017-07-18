class UsersController < ApplicationController

  def new

    @user = User.new
  end

  def restaurant
   @usertype = Usertype.where(name: "restaurant").first

   @user = User.new
   # user = User.new(user_params)
   #  if user.save!
   #    session[:users_id] = user.id
   #    redirect_to '/'
   #  else
   #    render :restaurant
   #  end
  end

  def worker
    @usertype = Usertype.where(name: "worker").first
    @user = User.new
    # user = User.new(user_params)
    # if user.save!
    #   session[:users_id] = user.id
    #   redirect_to '/'
    # else
    #   render :worker
    # end
  end


  def create
    user = User.new(user_params)

    # binding.pry
    if user.save!
      session[:users_id] = user.id
      redirect_to '/'
    else


      if user.type.name == "restaurant"
        render :restaurant
      else
        render :worker
      end



    end
  end





  def show
  end

  private

  def user_params
    params.require(:user).permit(:usertype_id, :first_name, :email, :password, :password_confirmation)
  end
end
