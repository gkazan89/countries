class CountriesController < ApplicationController
  def index
    @countries = Country.all
    render "index.html.erb"
  end
end

