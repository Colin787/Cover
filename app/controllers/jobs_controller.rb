class JobsController < ApplicationController

  #before_action

  def new
    @job = Job.new

    render :new

    # there should be new.html.erb
    # AND it uses @job

    # it probably will use
    # form_for(@job) do |form| ...


  end

  def create
    @job = Job.new(job_params)
    @job.user_id = current_user.id
    if @job.save
      redirect_to jobs_path(@job)
    else

      render :new
      # renders new.html.erb
      # with @job filled with params
      # @job.errors.full_messages
    end
  end

  def show
    @job = Job.find params[:id]

    @comment = Comment.new
    @comment.job_id = @job.id
  end

  def index
    @userjobs = Job.find_by user_id: current_user.id
    @jobs = Job.all
  end

  def destroy
    @job = Job.find params[:id]
    @job.destroy
    redirect_to jobs_path(@job)
  end

  def update
  end

  def job_params
    params.require(:job).permit(:start_time, :end_time, :user_id, :description, :rate, :status)
  end

end
