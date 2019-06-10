require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    yield(collection[i])
    i += 1
    block_return_values
    binding.pry
  end
end

puts my_all?([1,2,3]) {|i| i < 2}