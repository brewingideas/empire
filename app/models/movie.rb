class Movie < ActiveRecord::Base
  attr_accessible :description, :release_date, 
  	:score, :title, :url

  validates :score, numericality: {
  	less_than_or_equal_to: 5,
  	greater_than: 0
  }

  acts_as_url :title

  def to_param
  	if url.present?
  		url
  	else
  		id
  	end
  end


end


