def help 
  puts "I accept the following commands: "
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
  puts "Goodbye"
end 


def list(songs)
  songs.each_with_index do |item, index|
    puts "#{index +1}. #{item}"
  end 
end 


def play(songs)
  puts "Please enter a song name or number: "
  input = gets.chomp 
  if (1..9).include?(input.to_i)
    puts "Playing #{songs[input.to_i - 1]}"
    elsif songs.include?(input)
    puts "Playing #{input}"
  else 
    puts "Invalid input, please try again"
  end
end 


def exit_jukebox
  puts "Goodbye"
end 

def run(songs) 
  help 
  input = ""
  while input != "exit" do
    puts "Please enter a command: "
    input = gets.chomp
    case input
      when "list"
        list(songs) 
      when "play"
        play(songs)
      when "help"
        help 
      when "exit"
        exit_jukebox
      else 
        help
    end 
    break
  end 
end 
      