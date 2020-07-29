class WelcomeController < ApplicationController
  def index
    @destination = Destination.new
    # This is a list of 15 cities for suggestions on where to travel to.
    @cities = ["London, England", "Bangkok, Thailand", "Paris, France", "Dubai, United Arab Emirates", "Istanbul, Turkey", "New York City, United States", "Singapore City, Singapore", "Kuala Lumpur, Malaysia", "Seoul, South Korea", "Hong Kong, China", "Tokyo, Japan", "Barcelona, Spain", "Amsterdam, Netherlands", "Rome, Italy", "Milan, Italy"]
  end

  def new
  end

end