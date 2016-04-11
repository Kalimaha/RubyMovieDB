require 'test_helper'

class DirectorTest < ActiveSupport::TestCase

  def test_constraints
    director = Director.new
    assert_not director.save, 'The director has been saved without the first name.'
  end

  def test_full_name
    assert_equal 'James Cameron', artists(:one).full_name
  end

end
