require 'test_helper'

class MovieTest < ActiveSupport::TestCase

  def test_constraints
    movie = Movie.new
    assert_not movie.save, 'The movie has been saved without a title.'
  end

  def test_1
    assert_equal 'The Terminator', movies(:one).title, 'The title is not "The Terminator"'
    assert_equal 1984, movies(:one).year, 'The Terminator was released in 1984'
  end

  def test_2
    assert_equal 'Terminator 2: Judgment Day', movies(:two).title, 'The title is not "Terminator 2: Judgment Day"'
    assert_equal 1992, movies(:two).year, 'The Terminator was released in 1984'
  end

  def test_3
    assert_equal 'Terminator 3: Rise of the Machines', movies(:three).title, 'The title is not "Terminator 3: Rise of the Machines"'
    assert_equal 2003, movies(:three).year, 'The Terminator was released in 1984'
  end

end