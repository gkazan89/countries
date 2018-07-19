class CountriesController < ApplicationController
  def index
    @countries = Country.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @country = Country.new(
      name: params[:name],
      capital: params[:capital],
      founded: params[:founded],
    )
    @country.save
    redirect_to "/countries"
  end

  def show 
    @country = Country.find_by(id: params[:id])
    render "show.html.erb"
  end
end

