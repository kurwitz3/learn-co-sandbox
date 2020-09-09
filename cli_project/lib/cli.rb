require 'pry'
class Cli 
  def starter 
       
          puts "Welcome to Taste of Mexico! Where you can find the recipes to your 
          favorite authentic mexican food! If you would like to see a list 
          of dishes press y!"
          Cli.first_user_input 
    end
    
       def fake_array 
       @new =[1,2,3,4,5,6,6]
        
         
       end
   
    def self.get_user_dish 
   puts "Choose your favorite dish by number to get the link to the recipe!"
      @new =[1,2,3,4,5,6,6]
        @new.each.with_index(1) do |dish,number|
          puts "#{number}. #{dish}"
        
    end 
  end
   def self.first_user_input 
     answer = gets.strip
    if answer == 'y'
      Cli.get_user_dish
    else 
      Cli.starter 
    end 
  end
  
end
