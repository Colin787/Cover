#This is unfortunately named, but is the controller for the applications model, and not the core controller named 'application_controller'

class ApplicationsController < ApplicationBaseController
<<<<<<< HEAD
=======

>>>>>>> 7811072d97123ac6e927235529ea2ffc864a3c96
  def create
    @application = Application.new
    @application.job_id = params[:job_id]
    @application.user = current_user
    @application.status = "active"

<<<<<<< HEAD

=======
>>>>>>> 7811072d97123ac6e927235529ea2ffc864a3c96
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
    @application = Application.all
    @userapps = @application.where(status: "active")
    @filter = @application.where(status: "accepted")
<<<<<<< HEAD

  end

  def list

=======
  end

  def list
>>>>>>> 7811072d97123ac6e927235529ea2ffc864a3c96
    @application = Application.all
  end

  def show
    @application = Application.new
  end

end