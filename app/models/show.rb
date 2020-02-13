require 'pry'
class Show < ActiveRecord::Base

  def self.highest_rating
    Show.order(:rating).last.rating
  end

  def self.most_popular_show
    Show.order(:rating).last
  end

  def self.lowest_rating
    Show.order(:rating).first.rating
  end

  def self.least_popular_show
    Show.order(:rating).first
  end

  def self.ratings_sum
    Show.sum(:rating)
  end 
end
