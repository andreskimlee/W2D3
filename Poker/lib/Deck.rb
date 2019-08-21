require "Card"

RANGE = [2,3,4,5,6,7,8,9,10,:J,:Q,:K,:A].freeze
SUIT  = [:clover,:diamond,:space,:heart].freeze

class Deck
  attr_reader :deck 
  def initialize
    @deck = populate 
  end 

  def populate #populates 52 instances of every card on deck) 
    new_deck = [] 
    
    SUIT.each do |suit|
      RANGE.each do |range|
    new_deck << Card.new(suit,range)
      end
    end
    
    new_deck.shuffle  
  end 
end

# range = [2,3,4,5,6,7,8,9,10,j,q,k,a]
# suit  = [clover,diamon,space,heart]

# suits.each do |suit|
#   range.each do |range|
#     card.new(suit,range)
