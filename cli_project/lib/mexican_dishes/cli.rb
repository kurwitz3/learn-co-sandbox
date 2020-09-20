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
    if input <= MexicanDishes::Dishes.all.length && input > 0 
           true 
         else 
           false 
         end 
        end 
 
   
    def second_user_input 
        answer = gets.strip.to_i
       if valid(answer) == false 
        puts "MAKE A VALID SELECTION "
        second_user_input
       else 
        selection = MexicanDishes::Dishes.all[answer - 1]
           puts "Here is the link for the recipe: 
           #{selection.recipe}"
         exit
       end 
    end
  end
