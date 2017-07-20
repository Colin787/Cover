#This is unfortunately named, but is the controller for the applications model, and not the core controller named 'application_controller'

class ApplicationsController < ApplicationController

  def create
    @application = Application.new
    @application.job_id = params[:job_id]
    @application.user = current_user
    @application.status = "active"
    puts @application.job_id
    
    if @application.save
      puts "saved application"
      redirect_to @application.job
    else
      puts "applicationing failed"
      @application.errors.each {|e|
        puts e    
      }
      redirect_to @application.job
    end
  end
  
  def index
    @application = Application.all
  end

  def show
    @application = Application.new
  end

end  