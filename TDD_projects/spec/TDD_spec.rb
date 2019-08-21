require "TDD"
require "rspec"

describe "#my_uniq" do 
  it "removes duplicates from an array" do
    expect(my_uniq([1,2,1,3,3])).to eq([1,2,3])
  end
end

describe "Array#two_sum" do 
  it "finds position of pairs that sum to zero" do 
  expect([-1,0,2,-2,1].two_sum).to eq([[0,4], [2,3]])
  end 
end

describe '#my_transpose' do
  it "which will convert between the row-oriented and column-oriented representations" do
  expect(my_transpose([[0, 1, 2],[3, 4, 5],[6, 7, 8]])).to eq([[0,3,6],[1,4,7],[2,5,8]])
  end

  it "does not use built in array#transpose" do
  array = [[0, 1, 2],[3, 4, 5],[6, 7, 8]]
  expect(array).to_not receive(:transpose)
  my_transpose(array)
  end
end

describe "#stock_picker" do
  it "takes in an array of stock prices to find the most profitable pair of days" do
  expect(stock_picker([27, 10, 13 , 15, 19, 20, 21])).to eq([1, 6]) 
  end

  context "if no days are profitable" do
    it "returns the day losing the least money" do
      expect(stock_picker([100, 94, 75, 53, 52, 30, 12])).to eq([3,4])
    end
  end

  context "if array contains a negative number" do
    it "Raises FailedStockError" do
      expect {stock_picker([100, 94, 75, -53, 52, 30, 12])}.to raise_error("FailedStockError")
    end
  end
end 