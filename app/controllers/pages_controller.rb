class PagesController < ApplicationController
#  skip_before_action :authenticate_user!
# Commented out devise authentication for SPA

  autocomplete :car, :make, full_search: true
  autocomplete :car, :model, full_search: true
  autocomplete :car, :vin, full_search: true
  autocomplete :part, :name, full_search: true
  autocomplete :factory, :name, full_search: true
  autocomplete :factory, :location, full_search: true

  def home
  end

  def search
    if params[:search].blank?
      redirect_to(root_path, alert: "Empty field!") and nil
    else
      @parameter = params[:search].downcase
      @result_cars = Car.where('make LIKE :search OR model LIKE :search OR vin LIKE :search', search: "%#{@parameter}%")
      @result_parts = Part.where('name LIKE :search', search: "%#{@parameter}%")
      @result_factories = Factory.where('name LIKE :search OR location LIKE :search', search: "%#{@parameter}%")
    end
  end
end