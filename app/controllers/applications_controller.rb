#This is unfortunately named, but is the controller for the applications model, and not the core controller named 'application_controller'

class ApplicationsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def new
  end

  def create
  end

  def show
    @jobs = Job.all
  end
  end

  def edit
  end

  def update
  end

  def destroy
  end