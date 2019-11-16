
Node = Struct.new(:value, :prev, :next)

class List
  def initialize (head, tail)
    @head_ = head
    @tail = tail
    @sz_ = 0
  end
  def insert(object)
    node = Node.new(object, nil, nil)
    if @sz_ == 0
      @head_ = node
      @tail_ = node
    else
      @tail_[:next] = node
      node[:prev] = @tail_
      @tail_ = node
    end
    @sz_+=1
  end 

  def last
    @tail_[:value]
  end
  
  def first
    @head_[:value]
  end
end
