def welcome
  puts "May the Force be with you!"# puts out a welcome message here!
end

def get_character_from_user
  puts "please enter a character name"

input = gets.chomp.downcase

return input



  # use gets to capture the user's input. This method should return that input, downcased.
end
