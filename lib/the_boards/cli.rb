class TheBoards::CLI

  def call
    list_genres
    menu
    goodbye
  end

  def list_genres
    puts "Today's Hottest Songs:"
    @genres = TheBoards::Songs.today
    @genres.each.with_index(1) do |genre, i|
      puts "#{i}. #{genre.name}"
    end

  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the song you'd like to see or type list to see the list again or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_genre = @genres[input.to_i-1]
        puts "'#{the_genre.name}' by #{the_genre.artist} is currently ##{the_genre.rank} on the charts."
        puts "#{the_genre.prev_rank}"
      elsif input == "list"
        list_genres
      else
        puts "Not sure what you want, type list or exit."
      end
    end
  end

  def goodbye
    puts "See you next week for more songs!!!"
  end

end