class Show < ActiveRecord::Base




  def self.highest_rating
    Show.all.sort_by{|i| i.rating}.last.rating
  end

  def self.most_popular_show
    Show.all.sort_by{|i| i.rating}.last
  end

  def self.lowest_rating
    Show.all.sort_by{|i| i.rating}.first.rating
  end

  def self.least_popular_show
    Show.all.sort_by{|i| i.rating}.first
  end

  def self.ratings_sum
    Show.all.map{|i| i.rating}.sum
  end

  def self.popular_shows
    Show.all.select{|i| i.rating > 5}
  end

  def self.shows_by_alphabetical_order
    Show.all.sort_by{|i| i.name}
  end


end
