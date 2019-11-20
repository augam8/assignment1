require 'tty-box'
require 'tty-font'
require 'tty-prompt'
require 'colorize'
require 'tty-spinner'
require 'colorized_string'

prompt = TTY::Prompt.new
font = TTY::Font.new(:straight)
print TTY::Box.frame

def exit_method(massage_add_ons, massage_selection, oil_selection) 

    if massage_add_ons.length > 0
        puts "Your treatment for today is #{massage_selection} with #{oil_selection} with #{massage_add_ons}. Please take a seat to our lounge area and help yourself to a complimentary tea while we print your order and get your room ready"

    elsif massage_add_ons.length == 0
        puts "Your treatment for today is #{massage_selection} with #{oil_selection}. Please wait one while we get your room ready"

    end

    save_to_file(massage_selection, oil_selection, massage_add_ons)

    puts "GB" #?

    exit
end

def select_add_ons(add_ons, prompt)
    # puts "Please select add ons"    
    more_add_ons = []
    continue = true
    while (continue == true)
        # puts "Upgrade options..."
        selection = prompt.multi_select("Please select your upgrades: ", add_ons) 
        selection.each do |item| #selects all options and pushes them into more_add_ons array
            more_add_ons.push(item)
        end
        puts "Would you like to select another upgrade? Y or N ?"
        response = gets.chomp
        
        if (response == "N" or response == "n")
            continue = false
        end
    end
    # message here?
    more_add_ons
end

#this is creating a method to save to a file treatment.txt
def save_to_file(massage_selection,oil_selection,massage_add_ons)
    #user_selection is a string 
    user_selections = ($name.to_s + "," + massage_selection + "," + oil_selection) 
    #loops through add_ons and puts all items in massage_add_ons empty array  
    massage_add_ons.each do |item| 
        user_selections += ("," + item)
    end
    File.write("treatment.txt", user_selections)
end


massage_therapy = ["relaxation", "deep tissue", "remedial", "swedish", "shiatsu", "aromatherapy", "thai massage"] 

massage_oils = ["coconut oil", "avocado oil", "grapeseed oil", "jojoba oil", "apricot oil"]

add_ons = ["body scrub", "facials", "cupping", "hotstone", "reflexology"]


puts TTY::Box.frame(font.write("Welcome to Zen Sanctuary")).colorize(:magenta)
puts "To help direct you to our menu system, may I begin with your name please?".colorize(:green) 

$name = gets.chomp.capitalize

puts "Pleasure to have you here today #{$name.colorize(:yellow)}! Please select your preferred massage type from the following options.."


massage_selection = prompt.select("You have chosen;", massage_therapy)

massage_add_ons = []

case massage_selection
    when "relaxation", "deep tissue", "remedial", "swedish", "shiatsu", "aromatherapy"
        oil_selection = prompt.select("Now lets choose a massage oil for your session today", massage_oils)
        puts "Great #{$name}! you have selected #{oil_selection.colorize(:green)} with your #{massage_selection.colorize(:green)} massage" 
        puts "Now would you like to add an upgrade? Please enter Y or N".colorize(:cyan)
        
        answer = gets.chomp.capitalize
        
        if (answer == 'Y' or answer == "y") #user can type lowercase or uppercase
    
            massage_add_ons = select_add_ons(add_ons, prompt)

        elsif(answer == "N" or answer == "n") #user can type lowercase or uppercase

            exit_method(massage_add_ons, massage_selection, oil_selection)

        end   

        exit_method(massage_add_ons, massage_selection, oil_selection)
        
    when "thai massage"
        
       puts "No oils required for #{massage_selection.colorize(:yellow)}"

        puts "Now would you like to add an upgrade? Please enter Y or N"
        answer = gets.chomp.capitalize
        
        if (answer == 'Y' or answer == 'y')
    
            massage_add_ons = select_add_ons(add_ons, prompt)

        elsif(answer == 'Y' or answer == 'n')
            
            puts "You have chosen no upgrades for your #{massage_selection}." 

            exit
        end

        puts "Your treatment for today: #{massage_selection}. Please take a seat to our lounge area and help yourself to a complimentary tea while we get your room ready"

    
end # end case