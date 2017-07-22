class UsersController < ApplicationBaseController
  def new
    if current_user
      flash[:info] = "You are currently logged in, please logout to create a new account"
    end
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
    @user.experiences.new
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
    if user.save
      session[:users_id] = user.id
      redirect_to '/login'
      flash[:success] = "Login to complete your registration process"

    else
      if User.find_by(email: user.email)
        flash[:danger] = "A user with this email already exists"
        redirect_to "/users/#{user.usertype.name}"
      else
      flash[:danger] = "An unexpected error has occured, please try again later"
      redirect_to "/users/#{user.usertype.name}"
      end
    end
  end





  def show
    @user = User.find(params[:id])
    render :template => 'show'
  end

  private

  def user_params
    params.require(:user).permit(:usertype_id, :first_name, :email, :password, :password_confirmation, :cell,:last_name, :city, :province, :postal_code, :restaurant_name, :street_address)
  end
end