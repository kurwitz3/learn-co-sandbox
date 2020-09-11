require 'pry'
class MexicanDishes::Cli 
  
  attr_accessor :dish
  
  
  
  def  starter 
    puts  "Welcome to Taste of Mexico! Where you can find the recipes to your favorite 
authentic Mexican food!  If you would like to see a list of dishes press y!"
          MexicanDishes::Scraper.scrape_url
        first_user_input 
        second_user_input 
    end
    
   
  def get_user_dish 
    puts "Choose your favorite dish by number to get the link to the recipe!"
        MexicanDishes::Dishes.all.each.with_index(1) do |food,number|
      puts "#{number}. #{food.dish}"
    end 
  end
   
   def first_user_input 
     answer = gets.strip
      if answer == 'y'
       get_user_dish
      else 
       starter 
    end 
  end
  
    def second_user_input 
      answer = gets.strip.to_i
       if answer <= MexicanDishes::Dishes.all.length && answer > 0 
         selection = MexicanDishes::Dishes.all[answer - 1]
           puts "Here is the link for the recipe: 
           #{selection.recipe}"
        else
          puts  "PLEASE MAKE VALID SELECTION"
          second_user_input
      end 
    end
  end
