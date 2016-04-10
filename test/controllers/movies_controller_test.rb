require 'test_helper'

class MoviesControllerTest < ActionController::TestCase

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:movies)
  end

  def test_show
    get(:show, {'id' => movies(:one).id})
    assert_response :success
    assert_not_nil assigns(:movie)
  end

  def test_create
    post :create, movie: {title: movies(:one).title, year: movies(:one).year}
    assert_redirected_to movie_path(assigns(:movie))
  end

end