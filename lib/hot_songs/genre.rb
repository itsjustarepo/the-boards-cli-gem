class HotSongs::Songs
  attr_accessor :name, :artist, :rank, :prev_rank
  def self.today
    # Scrape Billboard and then return genres based on that data
    self.scrape_billboard
  end

  def self.scrape_billboard
    songs = []
    doc = Nokogiri::HTML(open("http://www.billboard.com/charts/hot-100"))
    doc.css("div.chart-row__main-display").collect do |title|
      song = self.new
      song.name = title.css("h2").text
      song.artist = title.css("a.chart-row__artist").text.strip
      song.rank = title.css("span.chart-row__current-week").text.strip
      song.prev_rank = title.css("span.chart-row__last-week").text.strip
      songs << song
    end
    songs

    #genre = self.new
    #genre.name = doc.search("h2").text
    #genre
  end
end