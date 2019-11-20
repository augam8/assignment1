require 'colorize'

# $aVariable = "x"

# def anymethod(username,password)
#     puts $aVariable
# end

# anymethod("skjdfhks","sdfsdf")


# def save_details_to_file(customer_name, shopping_cart_selections)
#     str = customer_name
#     shopping_cart_selections.each do |item|
#         str += "," + item
#     end
#     puts str
# end

# save_details_to_file("rach",["apple","orange"])

# cust_name = "rach"
# cart = ["pear","grapes"]

# save_details_to_file(cust_name,cart)

# # login("name", "hhhjj")


# # uname = "any"
# # pword = "word"

# # login(uname, pword)

# # username = "rach"
# # password ="pass"

# # login(username,password)

# arr = [1, [2, [3]]].flatten
# puts arr

#File.write("sjdfhksdhfk.txt","a string to write")


# file_contents = ""
# begin
#     file_contents = File.read("treatjkkhkjkjment.txt")
# rescue
#     puts "please choose another file..."
# end
# puts "prgram keeps runing..."
# if (file_contents.length > 0)
#     puts "file contents: " + file_contents
# end

# ARGV.each do |arg|
#     puts arg
# end

# filename = ARGV[0]

# puts filename

# ARGV.clear

# name = gets
expected = 4
return_bytes = File.write("sdhgfjhsdgf.txt","abcd")
if expected == return_bytes 
    puts "true".colorize(:green)
else
     puts "false".colorize(:red)
end


# def test_add_ons
#     test_add_ons = more_add_ons
#     expected_result = true
#     actual_result = more_add_ons[]
#     if expected_result == actual_result
#         puts "Pass"
#     else puts "Fail"
#     end
# end