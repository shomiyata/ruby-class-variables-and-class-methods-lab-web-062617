require 'pry'

class Song
  attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
    #return array of all the genres of existing songs, unique
  end

  def self.artists
    @@artists.uniq
    #return array of all the artists of existing songs, unique
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      genre_count[genre] = @@genres.count(genre)
    end
    genre_count
    #return a hash "genre" => number
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      artist_count[artist] = @@artists.count(artist)
    end
    artist_count
    #return a hash "genre" => number
  end

end
