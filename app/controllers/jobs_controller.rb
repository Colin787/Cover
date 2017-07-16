class JobsController < ApplicationController

  before_action :user_login

  def new

  end

  def create
    job = Job.new(job_params)
    job.user_id = current_user.id
    if review.save!
      redirect_to jobs_path(job.user_id)
    else
      redirect_to jobs_path(job.user_id)
    end
  end

  def show
    @jobs = Job.find params[:id]

    @comment = Comment.new
    @comment.job_id = @job.id
  end

  def index
    @jobs = Job.all.order(created_at: :desc)
  end

  def destroy
    @job = Job.find params[:id]
    id = @job.id
    @job.destroy
    redirect_to jobs_path(id)
  end

  def update
  end

  def job_params
    params.require(:jobs).permit(:start_time, :end_time, :user_id, :description, :rate, :status)
  end

end
