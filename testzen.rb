require "zen"

# write_to_file(user_selections)
# def write_to_file(save_to_file)
#     begin
#         File.write("treatment.txt", user_selections)
#     rescue StandardError => exception
#         puts "failed save to file: #{exeption}"
#     end
# end    



# testing add_ons with adding facials and cupping (19characters)
expected_results = 77
#   def save_to_file(massage, oil, upgrades)
#       user_selections = ($name.to_s + "," + massage_selection + "," + oil_selection)
#       massage_add_ons.each do |item| 
#       user_selections += ("," + item)
    save_to_file
     return_bytes =  File.write("treatment.txt", user_selections)
         if expected == return_bytes 
             puts "true".colorize(:green)
         else
             puts "false".colorize(:red)
     end
    

return_bytes(return_bytes)