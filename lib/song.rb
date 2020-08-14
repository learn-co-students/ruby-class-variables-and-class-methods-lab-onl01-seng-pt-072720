class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(song_name, song_artist, song_genre)
    @@count += 1
    @name = song_name
    @artist = song_artist
    @@artists << song_artist
    @genre = song_genre
    @@genres << song_genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    new_genre_count = {}
    @@genres.each do |genre_name|
      # key => value
      # hash[key] = value
      if new_genre_count.include?(genre_name)
        new_genre_count[genre_name] +=1
      else
        new_genre_count[genre_name] = 1
      end
    end
    new_genre_count
  end

  def self.artist_count
    new_artist_count = {}
    @@artists.each do |artist_name|
      if new_artist_count.include?(artist_name)
        new_artist_count[artist_name] +=1
      else
        new_artist_count[artist_name] = 1
      end
    end
    new_artist_count
  end

  # def self.artist_count(argument)
  #   self.general_count(argument)
  # end
  #
  #   def self.general_count(argument)
  #     new_count = {}
  #     argument.each do |argument_items|
  #       if new_count.include?(argument_items)
  #         new_count[argument_items] +=1
  #       else
  #         new_count[argument_items] = 1
  #       end
  #     end
  #     new_count
  #   end



end
