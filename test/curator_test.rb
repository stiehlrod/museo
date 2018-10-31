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
    @photo_3 = {
      id: "3",
      name: "Identical Twins, Roselle, New Jersey",
      artist_id: "3",
      year: "1967"
    }

    @photo_4 = {
      id: "4",
      name: "Child with Toy Hand Grenade in Central Park",
      artist_id: "3",
      year: "1962"
    }

    @artist = {
      born: "1908",
      country: "France",
      died: "2004",
      id: "1",
      name: "Henri Cartier-Bresson"
    }
    @artist_2 = {
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
    }

    @artist_3 = {
      id: "3",
      name: "Diane Arbus",
      born: "1923",
      died: "1971",
      country: "United States"
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
    @curator.add_artist(@artist)
    assert_equal "Henri Cartier-Bresson", @curator.artists.first[:name]
  end

  def test_it_can_find_artist_by_id
    @curator.add_artist(@artist)
    assert_equal @artist, @curator.find_artist_by_id("1")
  end

  def test_it_can_find_artist_by_another_id
    @curator.add_artist(@artist)
    assert_equal @artist, @curator.find_artist_by_id("2")
  end

  def test_find_photographs_by_artist
    skip
    #{}` - This method takes an `Artist` object and returns
    #an Array of all the Artist's photographs.
  #A `Photograph` is linked to an `Artist` by its `artist_id`

  end
  def test_it_has_many
    @curator.add_artist(@artist)
    @curator.add_artist(@artist_2)
    @curator.add_artist(@artist_3)
    @curator.add_artist(@artist_4)
    @curator.add_photograph(@photo_1)
    @curator.add_photograph(@photo_2)
    @curator.add_photograph(@photo_3)
    @curator.add_photograph(@photo_4)
    assert_equal "diane_arbus", @curator.find_artist_by_id("3")
  end
end
