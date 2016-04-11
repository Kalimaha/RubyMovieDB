class ActorsController < ApplicationController

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new(actor_params)
    if @actor.save
      redirect_to @actor
    else
      render 'new'
    end
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def index
    @actors = Actor.order('last_name, birthday').all
  end

  private
  def actor_params
    params.require(:actor).permit(:first_name, :last_name, :birthday, :country)
  end

end