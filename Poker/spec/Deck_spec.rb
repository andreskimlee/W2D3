require "rspec"
require "Deck"
describe Deck do
  subject(:bigdeck) { Deck.new }

  describe "intialize" do
    it "initializes with 52 cards" do 
    expect(bigdeck.deck.count).to eq(52) 
    end 
  end 

  describe "populate" do 

    it "fills an empty array with 52 Card instances" do
      expect(bigdeck.deck.count).to eq(52)
    end

    it "checks that each element is a Card instance" do
      expect(bigdeck.deck[0].is_a?(Card)).to eq(true)
    end

  end

end 