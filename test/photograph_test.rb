require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'
require './lib/artist'

class PhotographTest < Minitest::Test

  def setup
    @photo_1 = Photograph.new({
          id: "1",
          name: "Rue Mouffetard, Paris (Boy with Bottles)",
          artist_id: "4",
          year: "1954"
        }  )

  end

  def test_it_exists
    assert_instance_of Photograph, @photo_1
  end

  def test_it_has_an_id
    assert_equal "1", @photo_1.id
  end

  def test_has_a_name
    assert_equal "Rue Mouffetard, Paris (Boy with Bottles)", @photo_1.name
  end

  def test_it_has_an_artist_id
    assert_equal "4", @photo_1.artist_id
  end

  def test_it_has_a_year
    assert_equal "1954", @photo_1.year
  end


end
