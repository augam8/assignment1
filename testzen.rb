require "zen"

#here i test code write to file using begin/rescue using incorrect spelling for .txt file
write_to_file
file_contents = File.read("treatmentttt.txt", $name.to_s + "," + massage_selection + "," + oil_selection)
     rescue StandardError => exception
         puts "failed save to file: #{exeption}"

     end
 end    
 
 file_contents = ""
 # begin
 #     file_contents = File.read("treatjkkhkjkjment.txt")
 # rescue
 #     puts "please choose another file..."
 # end
 # puts "prgram keeps runing..."
 # if (file_contents.length > 0)
 #     puts "file contents: " + file_contents
 # end







# testing add_ons with adding facials and cupping (19characters)
expected_results = 77
#   def save_to_file(massage, oil, upgrades)
       user_selections = ($name.to_s + "," + massage_selection + "," + oil_selection)
#       massage_add_ons.each do |item| 
#       user_selections += ("," + item)
    save_to_file
     return_bytes =  File.write("treatment.txt", $name.to_s + "," + massage_selection + "," + oil_selection)
         if expected == return_bytes 
             puts "true".colorize(:green)
         else
             puts "false".colorize(:red)
     end
    

return_bytes