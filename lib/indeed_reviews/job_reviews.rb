class JobReviews
  attr_accessor :name, :url, :description, :price, :rating

  @@all = []

  def initialize(name, url)
    @name = name
    @url = "https://www.indeed.com" + url
    @@all << self
  end

  def self.all
    @@all
  end

end
