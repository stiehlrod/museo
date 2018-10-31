require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'
require './lib/artist'

class CuratorTest < Minitest::Test

  def test_it_exists
    curator = Curator.new
    assert_instance_of Curator, curator
  end
end
