def welcome
  "Welcome to the Star Wars convention!"
end

def get_character_from_user
  puts "please enter a character name"
  name = gets.chomp.downcase
  name
end
