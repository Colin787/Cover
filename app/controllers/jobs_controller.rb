class JobsController < ApplicationBaseController

  def new
    if current_user.usertype_id == 2
      redirect_to '/jobs'
    else
      @job = Job.new
    end
    # there should be new.html.erb
    # AND it uses @job
    # it probably will use
    # form_for(@job) do |form| ...
  end

  def create
    @job = Job.new(job_params)
    puts "IM HERE"
    @job.user_id = current_user.id
    puts "I AM HERE AGAIN"
    @job.user = current_user
    if @job.save
      redirect_to @job
      puts "saved job"
    else
<<<<<<< HEAD
      @job.errors.each {|e| puts e }
      redirect_to '/jobs'
=======
      redirect_to @job
      puts "Job not saved"
>>>>>>> master
    end
  end

  def show
    @job = Job.find params[:id]
    @comment = Comment.new
    @application = Application.new    
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

  def edit
    @job = Job.find params[:id]
  end

  def update
    if @job = Job.update(job_params)
      redirect_to job_path(@job)
    else
      redirect_to edit_job_path(@job)
    end
  end

  def job_params
    params.require(:job).permit(:start_time, :end_time, :user_id, :description, :rate, :status, :jobtype_id)
  end

end
