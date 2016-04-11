class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    case params[:artist][:type]
      when 'Director'
        create_director
      else
        create_actor
    end
  end

  def index
    @artists = Artist.order('last_name').all
  end

  private
  def create_actor
    @actor = Actor.new(artist_params)
    if @actor.save
      redirect_to @actor
    else
      render 'new'
    end
  end

  private
  def create_director
    @director = Director.new(artist_params)
    if @director.save
      redirect_to @director
    else
      render 'new'
    end
  end

  private
  def artist_params
    params.require(:artist).permit(:type, :first_name, :last_name, :birthday, :country)
  end

end