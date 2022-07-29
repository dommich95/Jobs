class AppliesController < ApplicationController
  def new
    @apply= Apply.new
  end

  def create# create a job, give it an ID (more for the applicants show page)
    @job = Job.find params[:id]
    apply = Apply.create apply_params 
    @job.applies << apply
    redirect_to apply
  end

  def show
  end

  def apply_params #only those params can be used
    params.require(:apply).permit(:name, :family, :email, :description )
  end
end
