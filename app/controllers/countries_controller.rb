class CountriesController < ApplicationController
  def index
    @countries = Country.all
    render "index.json.jbuilder"
  end

  def create
    @country = Country.new(
      name: params[:name],
      capital: params[:capital],
      founded: params[:founded],
      )
    @country.save
    render "show.json.jbuilder"
  end

  def update
    @country = Country.find_by(id: params[:id])
    @country.name = params[:name] || @country.name
    @country.capital = params[:capital] || @country.capital
    @country.founded = params[:founded] || @country.founded
    @country.save
    render "show.json.jbuilder"
  end

  def destroy
    @country = Country.find_by(id: params[:id])
    @country.destroy
    render json: {message: "Eliminated"}
  end

end
