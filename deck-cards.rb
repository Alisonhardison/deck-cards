class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
      @rank = rank
      @suit = suit
  end

  def output_card
      puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
      Card.new(rand(52), spades, hearts, diamonds, clubs)
  end
end

class Deck
  def initialize
      @ranks = [(2..10), 'J', 'Q', 'K', 'A']
      @suits = ['spades', 'hearts', 'diamonds', 'clubs']
      @cards = []

      @ranks.each do |ranks|
        @suits.each do |suits|
          @cards << Card.new(ranks, suits)
        end
      end

  def shuffle
    @cards.shuffle!
  end

  def deal (number)
     number.times {@cards.shift.output_card}
  end
end

  def output
    @cards.each do |card|
      card.output_card
    end
  end
end


deck = Deck.new
deck.shuffle
deck.deal(1)
deck.output