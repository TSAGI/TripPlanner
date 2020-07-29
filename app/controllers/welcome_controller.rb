class WelcomeController < ApplicationController
  def index
    @destination = Destination.new
  end

  def new
  end

end