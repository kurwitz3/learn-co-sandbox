require 'pry'
class Cli 
  def starter 
       
          puts "Welcome to Taste of Mexico! Where you can find the recipes to your 
          favorite authentic mexican food! If you would like to see a list 
          of dishes  press enter if your not interested put exit"
     answer = gets.chomp
    end
    
    def self.get_user_dish 
      binding.pry 
      Dishes.all.each.with_index do |dish,number|
        binding.pry  
        
    end 
  end
    
  
end
Cli.get_user_dish