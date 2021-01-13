class MexicanDishes::Cli 
  
   def  starter 
      MexicanDishes::Scraper.scrape_url
    puts  "Welcome to Taste of Mexico! Where you can find the recipes to your favorite 
authentic Mexican food!  If you would like to see a list of dishes press y!"
      first_user_input 
      second_user_input 
  end
  
   def first_user_input 
     answer = gets.strip
    if answer == 'y'
       get_user_dish
     else 
       starter 
    end 
   end
  
  def get_user_dish 
    puts "Choose your favorite dish by number to get the link to the recipe!"
      MexicanDishes::Dishes.all.each.with_index(1) do |food,number|
    puts "#{number}. #{food.dish}"
   end 
  end
  
  def valid(input)
 input <= MexicanDishes::Dishes.all.length && input > 0 
    
     
  end 
 
   
  def second_user_input 
    answer = gets.strip.to_i
     
       until valid(answer) 
        puts "MAKE A VALID SELECTION "
        second_user_input
       end 
        selection = MexicanDishes::Dishes.all[answer - 1]
          puts "Here is the link for the recipe: 
          #{selection.recipe}"
          puts "If you would like to exit press x"
          input  = gets.strip 
          until input == "x"
        get_user_dish 
       second_user_input 
     end
    end
  end
