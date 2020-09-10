
class MexicanDishes::Cli 
  def  starter 
    puts "Welcome to Taste of Mexico! Where you can find the recipes to your 
          favorite authentic mexican food! If you would like to see a list 
          of dishes press y!"
        first_user_input 
        second_user_input 
    end
    
    def get_dishes 
      @dish = MexicanDishes::Dishes.all
    end 
   
  def get_user_dish 
    puts "Choose your favorite dish by number to get the link to the recipe!"
      @new =[1,2,3,4,5,6,6]
        @dish.each.with_index(1) do |dish,number|
      puts "#{number}. #{dish}"
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
     answer = gets.strip
   if answer.to_s <= @new.length && answer.to_s > 0 
     binding.pry
     @new[answer.to_s]
   end 
 end 
     
     
     
     
     
end
