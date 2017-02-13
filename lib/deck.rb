require_relative 'card'

# Represents a deck of cards
class Deck < Array
  def initialize
    populate
    shuffle!
  end

  def populate
    arr = Card.suits.product(Card.faces).collect do |s, f|
      Card.new(f, s)
    end
    replace self + arr
  end

  def draw(num = 1)
    shift(num)
  end
end
