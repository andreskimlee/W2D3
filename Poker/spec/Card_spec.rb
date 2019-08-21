require "rspec"
require "card"

describe Card do
  subject(:card) { Card.new("King","Diamond") }

  describe "intialize" do
    it "should take in a value" do
    expect(card.value).to eq("King")
    end

      it "should take in a suit" do
    expect(card.suit).to eq("Diamond")
    end
  end


end