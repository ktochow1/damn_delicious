#CLI controller

class CLI


  def start
    puts "Welcome to Damn Delicious!"
    puts "What are you in the mood to learn to cook today?"
    puts "Please type which meal you're most interested to make from this list: Appetizer, Breakfast, Soup, or Lunch"
    input = gets.strip.downcase
    case input
    when "appetizer"
        puts "Appetizer Recipes"
      when "breakfast"
        puts "Breakfast Recipes"
      when "soup"
        puts "Soup Recipes"
      when "dinner"
        puts "Dinner Recipes"
      when "lunch"
        puts "Lunch Recipes"
        url = "https://damndelicious.net/"
        Scraper.scrape_categories(url)
      when "exit"
        puts "Goodbye! Hope to see you soon!"
      else "Hmm, I'm not sure what you meant. Can you try again please?"
      end
    end


end
