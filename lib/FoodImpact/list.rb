
Node = Struct.new(:value, :prev, :next)

class List
  def initialize (head, tail)
    @head_ = head
    @tail = tail
    @sz_ = 0
  end
end
