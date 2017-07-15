class HomeController < ApplicationController
  def index
    @jobs = Job.all.order(created_at: :dec)
  end

  def show
    @job = Job.find params[:id]

  end

end
