class ReviewsController < ApplicationBaseController

 before_action :authorize

  def create
    @review = Review.new(review_params)
    @review.job_id = params[:job_id]
    @review.user_by = current_user
    @review.user_about = @review.job.user

    if @review.save
      redirect_to @review.job
      puts "saved review"
    else
      puts "review not saved, errors:"
      @review.errors.full_messages.each { |msg| puts msg }
      puts "job taken evarror:", @review.errors[:job]

      if @review.errors.details[:job].detect{ |err| err[:error] == :taken }
        redirect_to @review.job, flash: { warning: "You already reviewed this job!"}
      else
        # recommend re-rendering job page, with THIS scope's @review
        # so its fields can be filled back into the form (to be corrected)
        # and also show the user @review.errors.full_messages
        @comment = Comment.new
        @application = Application.new
        @job = @review.job
        render "jobs/show"
      end
    end
  end

  def destroy
    @review = Review.find params[:id]
    @review.destroy
    @product = Product.find params[:job_id]
    redirect_to [@job], notice: 'Review deleted'
  end

  private
  def review_params
    params.require(:review).permit(:comment, :rating)
  end

end