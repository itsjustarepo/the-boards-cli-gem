class TheBoards::CLI

  def call
    list_songs
    menu
    goodbye
  end

  def list_songs
    puts "Today's Hottest Songs:"
    @songs = TheBoards::Songs.today
    @songs.each.with_index(1) do |genre, i|
      puts "#{i}. #{genre.name}"
    end

  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the song you'd like to see or type list to see the list again or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_song = @songs[input.to_i-1]
        puts "'#{the_song.name}' by #{the_song.artist} is currently ##{the_song.rank} on the charts."
        puts "#{the_song.prev_rank}"
      elsif input == "list"
        list_songs
      else
        puts "Not sure what you want, type list or exit."
      end
    end
  end

  def goodbye
    puts "See you next week for more songs!!!"
  end

end