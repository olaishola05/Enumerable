require_relative './my_enumerable.rb'

class MyList

  include MyEnumerable
  
  def initialize(*list)
    @list = list
  end

end

