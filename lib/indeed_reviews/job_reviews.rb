class JobReviews
  attr_accessor :name, :url

  @@all = []

  def initialize(name, url)
    @name = name
    @url = "https://www.indeed.com" + url
    @@all << self
  end

  def all
    @@all
  end

end
