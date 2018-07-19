class CountriesController < ApplicationController
  def index
    @countries = Country.all
    render "index.html.erb"
  end

  def show 
    @country = Country.find_by(id: params[:id])
    render "show.html.erb"
  end
end

