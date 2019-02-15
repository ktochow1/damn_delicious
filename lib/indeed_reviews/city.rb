class City
attr_accessor :name, :url
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
