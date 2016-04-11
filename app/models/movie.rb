class Movie < ActiveRecord::Base
  has_and_belongs_to_many :actors
  belongs_to :director
  validates :title, presence: true, length: { minimum: 5 }
  validates :director, presence: true
end
