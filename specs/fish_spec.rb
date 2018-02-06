require("minitest/autorun")
require_relative("../fish")

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("Fish_1")
  end

  def test_fish_has_name()
    assert_equal("Fish_1", @fish.name())
  end

end
