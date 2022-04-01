require_relative './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

print(list.all? { |e| e < 5 })
puts "\n"
print(list.all? { |e| e > 5 })

puts "\n"
print(list.any? { |e| e == 2 })
puts "\n"
print(list.any? { |e| e == 5 })

puts "\n"
print(list.filter(&:even?))
puts "\n"
