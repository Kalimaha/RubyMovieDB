class DirectorsController < ApplicationController

  def new
    @director = Director.new
  end

  def show
    @director = Director.find(params[:id])
  end

  def index
    @directors = Director.order('last_name, birthday').all
  end

end