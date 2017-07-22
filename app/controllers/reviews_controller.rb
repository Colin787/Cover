class ReviewsController < ApplicationBaseController

 before_action :authorize

  def create
    @review = Review.new(review_params)
    @review.user_id = params[:user_id]
    @review.user_by = current_user
    @review.user_about = @review.user

    if @review.save
      redirect_to @review.user
      puts "saved review"
    else
      puts "review not saved, errors:"
      @review.errors.full_messages.each { |msg| puts msg }
      puts "user taken evarror:", @review.errors[:user]

      if @review.errors.details[:user].detect{ |err| err[:error] == :taken }
        redirect_to @review.user, flash: { warning: "You already reviewed this restaurant!"}
      else
        # recommend re-rendering user page, with THIS scope's @review
        # so its fields can be filled back into the form (to be corrected)
        # and also show the user @review.errors.full_messages
        @comment = Comment.new
        @user = @review.user.new
        render "users/show"
      end
    end
  end

  def destroy
    @review = Review.find params[:id]
    @review.destroy
    @product = Product.find params[:user_id]
    redirect_to [@user], notice: 'Review deleted'
  end

  private
  def review_params
    params.require(:review).permit(:comment, :rating)
  end

end  