class JobsController < ApplicationController
  before_action :check_for_login
  def new
    @job = Job.new
  end

  def create
    job = Job.create job_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      job.image = req["public_id"]
      job.save
    end
    @current_user.jobs << job #ownership of job
    redirect_to job
  end

  def edit
    @job = Job.find params[:id]
  end

  def update
    job = Job.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      animal.image = req["public_id"]
    end
    job.update_attributes(job_params)
    job.save
    redirect_to job
  end

  def applicants
    @job = Job.find params[:id]
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
