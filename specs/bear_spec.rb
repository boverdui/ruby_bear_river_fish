require("minitest/autorun")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")


class BearTest < MiniTest::Test

  def setup
    stomach = []
    @bear = Bear.new("Pooh", stomach)

    fish = []
    for i in 1..100
      new_fish = Fish.new("Fish_#{i}")
      fish.push(new_fish)
    end
    @river = River.new("The River", fish)
  end

  def test_bear_has_name()
    assert_equal("Pooh", @bear.name())
  end

  def test_count_fish_in_bear()
    assert_equal(0, @bear.food_count())
  end

  def test_bear_takes_fish()
    @bear.take_fish(@river)
    assert_equal(1, @bear.food_count())
    assert_equal(99, @river.fish_count())
  end

  def test_bear_can_roar()
    assert_equal("Hum de dee dum, dum de dee dum.", @bear.roar())
  end

end
