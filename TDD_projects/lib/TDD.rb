def my_uniq(array)
  dict = Hash.new(0)
  array.each do |el|
    dict[el] += 1 
  end 
  dict.keys
end

class Array
  def two_sum
    arr = [] 
    self.each_with_index do |ele1, idx1|
      self.each_with_index do |ele2, idx2|
        if idx2 > idx1 && ele1 + ele2 == 0
          arr << [idx1, idx2] 
        end 
      end
    end 
    arr 
  end 
end 

def my_transpose(arry)
  full_transposed = []
   arry.each_with_index do |row, row_idx|
    transposed = []
    row.each_with_index do |col, col_idx|
     transposed << arry[col_idx][row_idx]
    end
    full_transposed << transposed
  end
  full_transposed
  # arry.transpose
end

def stock_picker(arr)
  raise "FailedStockError" if arr.any?{ |ele| ele < 0 }

  most_profit = (-arr[0]) + arr[1]
  indices = []
  i = 0
  while i < arr.length
    j = i + 1
    while j < arr.length
      profit = (-arr[i]) + arr[j]
      if profit > most_profit
        most_profit = profit
        indices << [i,j]
      end
      j +=1
    end
    i += 1
  end
  indices.last
end 
