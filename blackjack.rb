class Card
  attr_reader :face_value
  def initialize value, suit
    @value = value
    @suit = suit
    @face_value = value
  end
  
  def value
    if @value == :K || @value == :Q || @value == :J
      10
    elsif @value == :A
      return 1
    else
      @value 
    end
  end
end

class Deck
  def initialize
    @drawn = []
    @cards = []
    @suits = [:S,:C,:D,:H]
    @card_values = [:A,2,3,4,5,6,7,8,9,10,:J,:Q,:K]
    @suits.each do |suit|
      @card_values.each do |value|
        card = Card.new value, suit
        @cards.push(card)
      end
    end
  end
  attr_reader :cards

  def draw
    c = @cards.pop
    @drawn.push(c)
   return c
  end

  attr_reader :drawn
end

class Hand
  attr_reader :hand_value
  def initialize
    @cards_in_hand = []
  end
  
  def add *cards
    cards.each do |card|
      @cards_in_hand.push(card)
    end
  end

  def value
    @hand_value = 0
    @cards_in_hand.each do |card|
        @hand_value += card.value
      end

    if @hand_value < 12 && has_ace?
      @hand_value += 10
    else
      @hand_value
    end
  end


  def has_ace?
    @cards_in_hand.each do |card|
      if card.face_value == :A
        return true
      else
        return false
      end 
    end
  end
  def busted?
      if value > 21
        return true
      else
        return false
      end
    end
  end







