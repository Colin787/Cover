class ReviewsController < ApplicationBaseController

 before_action :authorize

  def create
    byebug
    @review = Review.new(review_params)
    @review.user_id = params[:user_id]
    @review.user_by = current_user
    @review.user_about = @review.user_id

    if @review.save
      redirect_to @review.user_id
      puts "saved review"
    else
      puts "review not saved, errors:"
      @review.errors.full_messages.each { |msg| puts msg }
      puts "job taken evarror:", @review.errors[:user_id]

      if @review.errors.details[:user_id].detect{ |err| err[:error] == :taken }
        redirect_to @review.user_id, flash: { warning: "You already reviewed this job!"}
      else
        # recommend re-rendering job page, with THIS scope's @review
        # so its fields can be filled back into the form (to be corrected)
        # and also show the user @review.errors.full_messages
        @comment = Comment.new
        @application = Application.new
        @user = @review.user_id
        render "jobs/show"
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