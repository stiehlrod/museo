require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'
require './lib/artist'
require './lib/curator'
require 'pry'

class CuratorTest < Minitest::Test

  def setup
    @curator = Curator.new
    @photo_1 = {
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: "1",
      year: "1954"
    }

    @photo_2 = {
      id: "2",
      name: "Moonrise, Hernandez",
      artist_id: "2",
      year: "1941"
    }
    @artist = {
      born: "1908",
      country: "France",
      died: "2004",
      id: "1",
      name: "Henri Cartier-Bresson"
    }
  end
  def test_it_exists
    assert_instance_of Curator, @curator
  end

  def test_it_can_have_artists
    assert_equal [], @curator.artists
  end

  def test_it_can_have_photographs
    assert_equal [], @curator.photographs
  end

  def test_it_can_add_photos
    @curator.add_photograph(@photo_1)
    @curator.add_photograph(@photo_2)
    @curator.photographs
  end

  def test_the_first_photo
    @curator.add_photograph(@photo_1)
    @curator.add_photograph(@photo_2)
    assert_equal @photo_1, @curator.photographs.first
  end

  def test_the_artist_has_a_name
    skip
    @curator.add_artist(@artist)
    assert_equal "Henri Cartier-Bresson", @curator.artists.first.name
  end

  def test_it_can_find_artist_by_id
    @curator.add_artist(@artist)
    assert_equal @artist, @curator.find_artist_by_id("1")
  end

  def test_it_can_find_artist_by_another_id
    @curator.add_artist(@artist)
    assert_equal @artist, @curator.find_artist_by_id("2")
  end
end
