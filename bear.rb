class Bear

  attr_reader(:name, :stomach)

  def initialize(name, stomach=[])
    @name = name
    @stomach = stomach
  end

  def food_count()
    return @stomach.count()
  end

  def take_fish(river)
    fish = river.lose_fish()
    @stomach.push(fish)
  end

  def roar()
    return "Hum de dee dum, dum de dee dum."
  end

end
