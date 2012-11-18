require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def test_score_too_high
  	movie = Movie.new
  	movie.score = 6
  	assert !movie.valid?, "too high score"
  end

  def test_score_too_low
  	movie = Movie.new
  	movie.score = -1
  	assert !movie.valid?, "too low score"
  end
end
