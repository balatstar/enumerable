require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*elements)
    @list = elements
  end

  def each
    @list.each do |item| 
      yield item
    end
  end
end

=begin
TESTS:

all?
list = MyList.new(1, 2, 3, 4)
puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })

any?
list = MyList.new(1, 2, 3, 4)
puts(list.any? {|e| e == 2})
puts(list.any? {|e| e == 5})
=end
