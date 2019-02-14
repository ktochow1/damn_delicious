#environment file
require "nokogiri"
require "open-uri"
require "pry" #pry not working

require_relative 'indeed_reviews/scraper'
require_relative 'indeed_reviews/cli'
require_relative 'indeed_reviews/job_reviews'
require_relative 'indeed_reviews/job_categories'

# require_relative 'indeed_reviews/cookbook'
