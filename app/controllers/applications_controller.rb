#This is unfortunately named, but is the controller for the applications model, and not the core controller named 'application_controller'

class ApplicationsController < ApplicationBaseController
  



  def create
    @application = Application.new
    @application.job_id = params[:job_id]
    @application.user = current_user
    @application.status = "active"
   
    
    if @application.save     
      redirect_to @application.job
    else      
      @application.errors.each {|e|
        puts e    
      }
      redirect_to @application.job
    end
  end
  
  def index
    # @userapps = Application.all
    if current_user.usertype_id == 1
      redirect_to '/jobs'
    else
    @application = Application.all
    @userapps = @application.where({ user_id: current_user.id, status: 'active' })
    @filter = @application.where({ user_id: current_user.id, status: 'accepted' })
    end
  end

  def list 

    @application = Application.all
  end

  def show
    @application = Application.new
  end

end  