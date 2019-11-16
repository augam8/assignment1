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

add_ons = ["body scrub", "facials", "cupping" "hotstone", "reflexology", "footscrub"]



  puts  TTY::Box.frame(font.write("Welcome to Zen Sanctuary")).colorize(:magenta)
  puts "To help direct you to our menu system, may I begin with your name please?".colorize(:green)
  
  name = gets.chomp.capitalize.colorize(:yellow)

  puts "#{name}, Pleasure to have you here today! Please choose a type of massage you would like to be treated for from the following options.."
        choices = ["relaxation", "deep tissue","remedial", "swedish", "shiatsu", "aromatherapy", "thai massage"]
        prompt.multi_select("Awesome you have chosen;", massage_therapy)

case massage_therapy
    when "relaxation", "deep tissue", "remedial", "swedish", "shiatsu", "aromatherapy"
        
        choices = ["coconut oil", "avocado oil", "grapeseed oil", "jojoba oil", "apricot oil"]
        prompt.multi_select("Now lets choose the type of massage oils for your chosen massage", massage_oils)

        oil_selection = gets.chomp

        puts "Great #{name}! you have selected #{oil_selection} with your #{massage_selection} massage" 
        
        if (answer == 'Y')
    
            puts select_add_ons(add_ons)

        elsif(answer == "N" || answer == "n")
            
            puts "Your treatment for today is #{massage_selection}. Please take a seat in our lounge area and help yourself to a complimentary tea while we get your room ready"

            exit
    
        end
    
    end
