class ExperiencesController < ApplicationController

  def index
    @experience = experience.all
  end

  def new
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user = current_user
    @experience.jobtype = params[:jobtype_id]

    if @experience.save
      puts "saved experience"
      redirect_to @experience.user
    else
      puts "experience failed"
      @experience.errors.each {|e|
        puts e
      }
      redirect_to @experience.user
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def experience_params
    params.require(:experience).permit(:experience)
  end

end