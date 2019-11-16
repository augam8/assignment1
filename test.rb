# massage_oils = ["coconut oil", "avocado oil", "grapeseed oil", "jojoba oil", "apricot oil", "olive oil"]
# essential_oils = ["lavender", "peppermint", "rosemary", "citrus oil", "eucalyptus oil"]
# spa_add_ons = ["body scrub", "sea salt scrub", "coffee scrub","facials", "cupping"]


# type_of_massage.each do |massage|
#     puts massage
# end

# types_of_massage = gets.chomp

# puts "Please select type of oil you would like with your treatment.."

# types_of_oils.each do |oil|
#     puts oil
# end

# types_of_oil = gets.chomp



#define the method within an aray
# def aroma_oils(essential_oils)
#     puts "Please select an essential oils..."
#     essential_oils.each do |oils|
#             puts oils
#          end
#          selection = gets.chomp
# end

# filling_selections = []
# more_fillings = true 
# while more_fillings
#     filling_selections.push(select_fillings(fillings)) 
#     puts "Would you like to select another filling? yes or no"
#     response = gets.chomp
#   if(response == "yes" || response == "yes")
#     more_fillings = true

#     elsif(response == "no" || response == "no")
#          more_fillings = false
#     else 
#          more_fillings = false
#     end
# end

# puts "Please select a sauce..."

# sauces.each do |sauce|
#     puts sauce
# end

# sauce_selection = gets.chomp

# def make_fillings_string(filling_selections) #pass array into method
#     fillings_string = ""
#     filling_selections.each do |filling|
#         fillings_string += (filling + ", ")
#     end
#     fillings_string.delete_suffix!(", ")
# end

# puts "Your burger: bun: #{bun_selection}, patty: #{patty_selection}, fillings: #{make_fillings_string(filling_selections)}, sauce: #{sauce_selection}"

massage_oils.each do |oils|
    #     puts oils
    # end
    # oil_selection = gets.chomp

    #when "thai massage"
#puts "would you like to upgrade?"

# else
    #     puts "please take a seat and we will call you to your room"
    # end

    
    end

    add_ons_selections = []
    more_add_ons = true
    while more_add_ons
        add_ons_selections.push(select_add_ons(add_ons))
        puts "would you like to select another filling? Y or N"
        answer = gets.chomp
        if(answer == "Y" || answer == "Y")
            more_add_ons = true

        elsif(answer == "N" || answer == "N")
            more_add_ons = false
        else
            more_add_ons = false
        end
    end
    puts "Your treatment for today: #{massage_selection}, #{oil_selection}, #{add_ons}"

elsif(answer == "N" || answer == "N")
    more_add_ons = false
else
 more_add_ons = false
end

case massage_selection 
when "aroma_therapy"
    puts "Please add an essential oil to add to your #{oil_selection}"
    puts aroma_oils
selected_aroma = gets.chomp

end

selected_aroma_oil = []
    selected_aroma_oil = true

    require 'tty-font'
require 'tty-prompt'
require 'colorize'
require 'tty-spinner'
require 'colorized_string'

prompt = TTY::Prompt.new
font = TTY::Font.new(: straight)
print TTY::Box.frame

massage_therapy = ["relaxation", "deep tissue", "remedial", "swedish", "shiatsu", "aromatherapy", "thai massage"]

massage_oils = ["coconut oil", "avocado oil", "grapeseed oil", "jojoba oil", "apricot oil"]

add_ons = ["body scrub", "facials", "cupping", "hotstone", "reflexology"]

aroma_oils = ["lavender", "peppermint", "citrus", "rosemary", "ylang ylang"]

puts TTY::Box.frame(font.write("Welcome to Zen Sanctuary")).colorize(: magenta)
puts "To help direct you to our menu system, may I begin with your name please?".colorize(: green)

name = gets.chomp.capitalize.colorize(: yellow)

puts "#{name}, Pleasure to have you here today! Please select your preferred massage type from the following options.."

choices = ["relaxation", "deep tissue", "remedial", "swedish", "shiatsu", "aromatherapy", "thai massage"]

prompt.multi_select("Awesome you have chosen;", massage_therapy)

massage_selection = gets.chomp

when "aromatherapy"
    puts "Now lets choose the type of massage oils for your aromatherapy"
    puts massage_oils 

        oil_selection = gets.chomp

    puts "Now lets add scented oils, please choose... "
    puts aroma_oils

    scented_oil = gets.chomp

else
    puts "Your treatment for today is #{massage_selection} with #{oil_selection}, and added #{scented_oil}. Please take a seat to our lounge area and help yourself to a complimentary tea while we get your room ready"
    
    aroma_oil_selections.push(select_add_ons(aroma_oil_selections))

puts "would you like to select another filling? Y or N"
    answer = gets.chomp

if(answer == "Y" || answer == "Y")
    more_add_ons = true
end

puts "Your treatment for today: #{massage_selection}, with #{oil_selection}. Please take a seat to our lounge area and help yourself to a complimentary tea while we get your room ready"