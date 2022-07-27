class AppliesController < ApplicationController
  def new
    @apply= Apply.new
  end

  def create
    @job = Job.find params[:id]
    apply = Apply.create apply_params 
    @job.applies << apply
    redirect_to apply
  end

  def show
  end

  def apply_params
    params.require(:apply).permit(:name, :family, :email, :description )
  end
end
