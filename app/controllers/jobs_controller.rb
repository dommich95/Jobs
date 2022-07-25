class JobsController < ApplicationController
  before_action :check_for_login
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    job = Job.create job_params
    @current_user.jobs << job #ownership of job
    redirect_to job
  end

  def edit
    @job = Job.find params[:id]
  end

  def update
    job = Job.find params[:id]
    job.update job_params
    redirect_to job
  end

  def show
      @job= Job.find params[:id]
    end

    def destroy
      job = Job.find params[:id]
      job.destroy
      redirect_to jobs_path
    end

  private
  def job_params
    params.require(:job).permit(:task, :location, :description, :duration, :images)
  end
end
