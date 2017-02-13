require_relative 'card'

# Represents a deck of cards
class Deck < Array
  def initialize
    populate
    shuffle!
  end

  def populate
    Card.suits.each do |s|
      Card.faces.each do |f|
        push Card.new(f, s)
      end
    end
  end

  def draw(num = 1)
    shift(num)
  end

  def hey
    "hey"
  end
end
