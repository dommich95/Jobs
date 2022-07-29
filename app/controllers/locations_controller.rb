class LocationsController < ApplicationController
  def index
    
  end

  def results
    if params[:search].present? # checks if something is in the search field
        @locations = Job.near(params[:search], 50, :order => :distance) #50km radius for the searched city
      else
        @locations = Job.all #all jobs
      end
  end

  def show
  end
end
