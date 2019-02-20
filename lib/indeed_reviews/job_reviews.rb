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

  def self.list_jobs
    @@all.each.with_index(1) do |job, index|
      puts "#{index}. #{job.name}"

    end
  end

end
