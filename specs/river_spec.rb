require("minitest/autorun")
require_relative("../river")
require_relative("../fish")

class RiverTest < MiniTest::Test

  def setup
    fish = []
    for i in 1..100
      new_fish = Fish.new("Fish_#{i}")
      fish.push(new_fish)
    end
    @river = River.new("The River", fish)
  end

  def test_river_has_name()
    assert_equal("The River", @river.name())
  end

  def test_count_fish_in_river()
    assert_equal(100, @river.fish_count())
  end

  def test_river_loses_fish()
    @river.lose_fish()
    assert_equal(99, @river.fish_count())
  end

end
