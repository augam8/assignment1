require "tty-prompt"
require "colorize"
require "tty-font"
require "tty-box"
require "tty-spinner"


prompt = TTY::Prompt.new
font = TTY::Font.new(:straight)
print TTY::Box.frame

massage_therapy = ["relaxation", "deep tissue","remedial", "swedish", "shiatsu", "aromatherapy", "thai massage"]

massage_oils = ["coconut oil", "avocado oil", "grapeseed oil", "jojoba oil", "apricot oil"]

upgrades = ["body scrub", "facials", "cupping" "hotstone", "reflexology", "footscrub"]


def select_upgrades(upgrades, prompt)
    
    puts "Please select an upgrade"
        more_upgrades = prompt.multi_select("Awesome you have upgraded to", upgrades)
    
        more_upgrades = []

        continue = true

    while (continue == true)
        
        puts "Upgrade options..."
        selection = prompt.multi_select("Awesome you have upgraded to", upgrades)
        
        selection = gets.chomp

        more_upgrades.push(selection)

        puts "Would you like to select another upgrade? Y or N?"
        response = gets.chomp
        if (response == "N")
            continue = false
        end
    end

   
end

def print_my_selections(my_selections)
    file.write("treatment.txt", name_receipt) #this is how to create a file for the customers chosen treatment
end
customer_selections = print_my_selections(my_selections)
puts print_my_selections




  puts  TTY::Box.frame(font.write("Welcome to Zen Sanctuary")).colorize(:magenta)
  puts "To help direct you to our menu system, may I begin with your name please?".colorize(:green)
  
  name = gets.chomp.capitalize.colorize(:yellow)

  puts "#{name}, Pleasure to have you here today! Please choose a type of massage you would like to be treated for from the following options.."
        
        selected_massage = prompt.select("Awesome you have chosen;", massage_therapy)

        more_upgrades = []

case massage_therapy
    when "relaxation", "deep tissue", "remedial", "swedish", "shiatsu", "aromatherapy"
        
        selected_oil = prompt.select("Now lets choose the type of massage oils for your chosen massage", massage_oils)

        puts "Great #{name}! you have selected #{oil_selection} with your #{massage_selection} massage" 

        puts "Now would you like to add an upgrade for your massage? Please enter Y or N"
        
        if (answer == 'Y')
    
            select_upgrades = select_upgrades(upgrades, prompt)

        elsif(answer == "N")
            
            puts "Your treatment for today is #{selected_massage} with #{selected_oil}. Please wait one moment while we print your treatment for today."

            exit
    
        end
    
            puts print_my_selections
            
    when "thai massage"
        
        puts "No oils required for #{massage_selection}"
 
         puts "Now would you like to add an upgrade? Please enter Y or N"
       
         
         if (answer == 'Y')
     
             select_upgrades = select_upgrades(upgrades, prompt)
 
         elsif(answer == "N")
             
             puts "You have chosen no upgrades for your #{massage_selection}. Please wait one moment while we print your treatment for today" 
 
             exit
        
        end
 
            puts "Your treatment for today: #{massage_selection}. Please take a seat to our lounge area and help yourself to a complimentary tea while we get your room ready"

         puts print_my_selections   
 
    
end

