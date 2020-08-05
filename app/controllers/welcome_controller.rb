class WelcomeController < ApplicationController
  def index
    @users = User.all
  end

  def get_territories
    @country = params[:country]
    @territories = CS.get(@country)
    respond_to do |format| 
      format.json {render json: @territories}
    end
  end

  def get_cities
    @country = params[:country]
    @territory = params[:territory]
    @cities = CS.get(@country, @territory)
    respond_to do |format|
      format.json {render json: @cities}
    end
  end
end
