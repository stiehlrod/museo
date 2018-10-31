require './lib/artist'
require './lib/photograph'
require 'pry'

class Curator

attr_reader :artists, :photographs

  def initialize
    @artists = []
    @photographs = []
  end

  def add_photograph(photo)
    @photographs << photo
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    artist_by_id = @artists.select do |artist|
      artists.first[:id] = id
    end
    artist_by_id[0]
  end
end
