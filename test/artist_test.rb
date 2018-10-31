require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'
require './lib/artist'

class ArtistTest < Minitest::Test

  def setup
    @artist = Artist.new({
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
     })
  end
  def test_it_exists
    assert_instance_of Artist, @artist
  end

  def test_it_has_an_id
    assert_equal "Ansel Adams", @artist.name
  end

  def test_it_has_a_born_on_year
    assert_equal "1902", @artist.born
  end

  def test_it_can_have_a_deceased_year
    assert_equal "1984", @artist.died
  end

  def test_it_has_a_country
    assert_equal "United States", @artist.country
  end
end
