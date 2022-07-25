class LocationsController < ApplicationController
  def index
    
  end

  def results
    if params[:search].present?
        @locations = Job.near(params[:search], 50, :order => :distance)
      else
        @locations = Job.all
      end
  end

  def show
  end
end
