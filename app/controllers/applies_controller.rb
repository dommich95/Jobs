class AppliesController < ApplicationController
  def new
    @apply= Apply.new
  end

  def create
    apply = Apply.create apply_params
    @current_user.applies << apply
    redirect_to apply
  end

  def show
  end

  def index
  end


  def apply_params
    params.require(:apply).permit(:name, :family, :description)
  end
end
