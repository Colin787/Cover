class JobsController < ApplicationController

  before_action :user_login

  def new

  end

  def create
    job = Job.new(job_params)
    job.user_id = current_user.id
  end

  def show
  end

  def index
  end

  def destroy
  end

  def update
  end

  def job_params
    params.require(:jobs).permit(:start_time, :end_time, :user_id, :description, :rate, :status)
  end

end
