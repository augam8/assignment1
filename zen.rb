require 'tty-box'
require 'tty-font'
require 'tty-prompt'
require 'colorize'
require 'tty-spinner'
require 'colorized_string'

prompt = TTY::Prompt.new
font = TTY::Font.new(:straight)
print TTY::Box.frame

def select_add_ons(add_ons)

    more_add_ons = []

    continue = true

    while (continue == true)
        
        # puts "Upgrade options..."
        upgrade_options = prompt.multi_select("Awesome you have upgraded to", add_ons)
        
        
    
        selection = gets.chomp

        more_add_ons.push(selection)

        puts "Would you like to select another upgrade? yes or no?"
        response = gets.chomp
        if (response == "N")
            continue = false
        end
    end

   
end

massage_therapy = ["relaxation", "deep tissue", "remedial", "swedish", "shiatsu", "aromatherapy", "thai massage"]

massage_oils = ["coconut oil", "avocado oil", "grapeseed oil", "jojoba oil", "apricot oil"]

add_ons = ["body scrub", "facials", "cupping", "hotstone", "reflexology"]


puts TTY::Box.frame(font.write("Welcome to Zen Sanctuary")).colorize(:magenta)
puts "To help direct you to our menu system, may I begin with your name please?".colorize(:green) 

name = gets.chomp.capitalize.colorize(:yellow)

puts "Pleasure to have you here today #{name}! Please select your preferred massage type from the following options.."

# choices = ["relaxation", "deep tissue","remedial", "swedish", "shiatsu", "aromatherapy", "thai massage"]  

massage_selection = prompt.select("Awesome you have chosen;", massage_therapy)

massage_add_ons = []

case massage_selection
    when "relaxation", "deep tissue", "remedial", "swedish", "shiatsu", "aromatherapy"

        oil_selection = prompt.select("Now lets choose a massage oil for your session today", massage_oils)
    

        puts "Great #{name}! you have selected #{oil_selection} with your #{massage_selection} massage" 

        puts "Now would you like to add an upgrade? Please enter Y or N"
        answer = gets.chomp.capitalize
        
        if (answer == 'Y')
    
            massage_add_ons = select_add_ons(add_ons)

        elsif(answer == "N")
            
            puts "Your treatment for today is #{massage_selection}. Please take a seat to our lounge area and help yourself to a complimentary tea while we get your room ready"

            exit

        end   
        
    when "thai massage"
        
       puts "No oils required for #{massage_selection}"

        puts "Now would you like to add an upgrade? Please enter Y or N"
        answer = gets.chomp.capitalize
        
        if (answer == 'Y')
    
            massage_add_ons = select_add_ons(add_ons)

        elsif(answer == "N")
            
            puts "Your treatment for today is #{massage_selection}. Please take a seat to our lounge area and help yourself to a complimentary tea while we get your room ready"

            exit
        end

        puts "Your treatment for today: #{massage_selection}. Please take a seat to our lounge area and help yourself to a complimentary tea while we get your room ready"

    
end # end case

    

    
