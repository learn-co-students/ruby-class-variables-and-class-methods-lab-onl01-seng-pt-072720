require 'pry'

class Song

attr_accessor :name, :artist, :genre

@@count = 0

@@artists = []

@@genres = []


def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@genres <<  @genre
  @@artists << @artist
  @@count += 1
end

def self.count
  @@count
end

def self.genres
  @@genres.uniq
end

def self.artists
  @@artists.uniq
end

def self.genre_count
  counted_genres = {}
    @@genres.each do |genre|
    if counted_genres[genre]
      counted_genres[genre] += 1
    else
      counted_genres[genre] = 1
end
end
counted_genres
end

def self.artist_count
  counted_artists = {}
  @@artists.each do |artist|
    if counted_artists[artist]
      counted_artists[artist] += 1
    else
      counted_artists[artist] = 1
    end
  end
  counted_artists
end
end
