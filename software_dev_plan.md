###SOFTWARE DEVELOPMENT PLAN

Here is a description of methods, arrays, variables.
#####1.User Input Details:

First of all user will  prompted to a box in a terminal emulator with below output messages

=>

| Welcome to Zen Sanctuary │

To help direct you to our menu system, may I begin with your name please?
Then user will be asked to input his/her name.
Pleasure to have you here today Bree! Please select your preferred massage type from the following options.
You have chosen relaxation



#####2. massage_selection() is main method

           There is called on based on different cases available in massage_therapy array. It is further divided into 2 parts

A. relaxation, deep tissue, remedial, swedish, shiatsu, aromatherapy
B. thai massage


#####3. A Case: massage_selection = "relaxation", "deep tissue", "remedial", "swedish",       " "shiatsu", "aromatherapy"

For example you have selected “relaxation”

 In next line you will be asked  to choose oil 

Now let's choose a massage oil for your session today

For example you have selected “coconut oil” so variable 
oil_selection = “coconut oil”

On next line you will see below text message using colorize gem.

Great Aubrey! you have selected coconut oil with your relaxation massage
Now would you like to add an upgrade? Please enter Y or N

If you enter ’Y’ then select_add_ons method will be called with arguments

select_add_ons(["body scrub", "facials", "cupping", "hotstone", "reflexology"], prompt)

and exit_method(massage_add_ons, massage_selection, oil_selection) will be returned.

else If you enter ’N’ then exit_method method will be called with arguments

exit_method([],"relaxation", “coconut oil”)


#####B Case: massage_selection = "thai massage"

On next line you will see below text message  with colors.

No oils required for thai massage
Now would you like to add an upgrade? Please enter Y or N

If you enter ’Y’ then select_add_ons method will be called with arguments

select_add_ons(["body scrub", "facials", "cupping", "hotstone", "reflexology"], prompt)

and exit_method(massage_add_ons, massage_selection, oil_selection) will be returned.

else If you enter ’N’ then user will see below message

You have chosen no upgrades for your thai massage.

At end of program user will be see below message.

Your treatment for today: #{massage_selection}. Please take a seat to our lounge area and help yourself to a complimentary tea while we get your room ready

#####4. select_add_ons()
continue = true
           In this method user can select multiple adons. All user selected addons are placed once in more_add_ons array. Then use will be prompted with a below message

Would you like to select another upgrade? Y or N ?

If you enter “Y” then continue = true to select more adons. 
If you enter “N” then while loop with exit and selected add_ons list will be returned otherwise continue = true to select more adons.




#####5. exit_method()

If user has selected any addons then user will see below messageg
               Your treatment for today is #{massage_selection} with #{oil_selection} with         #{massage_add_ons}. Please take a seat to our lounge area and help yourself to a complimentary tea while we print your order  and get your room ready

If user has not selected any addons then user will see below message
Your treatment for today is #{massage_selection} with #{oil_selection}. Please wait one while we get your room ready

At the end of exit_method save_to_file method will be called to save output to a file treatment.txt



#####6. save_to_file()

            In this method selected inputs are saved in a string variable called user_selections and then loops through add_ons and puts all items in massage_add_ons empty array. User_selections are saved in a newly created file treatment.txt. 


There are following below 4 arrays. The massage_add_on arrays is empty and when the user selects the upgrades then selections gets pushed into the array. 

massage_therapy = ["relaxation", "deep tissue", "remedial", "swedish", "shiatsu", "aromatherapy", "thai massage"]

massage_oils = ["coconut oil", "avocado oil", "grapeseed oil", "jojoba oil", "apricot oil"]

add_ons = ["body scrub", "facials", "cupping", "hotstone", "reflexology"]

massage_add_ons = []


