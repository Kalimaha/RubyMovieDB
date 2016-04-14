require 'test_helper'

class MovieTest < ActiveSupport::TestCase

  def test_movie_1
    assert_equal 'The Terminator', movies(:one).title, 'The title is not "The Terminator"'
    assert_equal 1984, movies(:one).year, 'The Terminator was released in 1984'
  end

end