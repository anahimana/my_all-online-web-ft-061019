require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i += 1
    # binding.pry
  end
  if block_return_values.include?(false)
end

puts my_all?([1,2,3]) {|i| i < 2}