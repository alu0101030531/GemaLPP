
Node = Struct.new(:value, :prev, :next)     # Nodos que formarán parte de la lista

class List
  # Construye una lista con una cabeza y una cola
  def initialize (head, tail)
    @head_ = head
    @tail = tail
    @sz_ = 0
  end

  # Inserta en la lista un nodo en la última posición
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

  # Extrae el último objeto de la lista
  def last
    @tail_[:value]
  end
 
  # Extrae el primer objeto de la lista
  def first
    @head_[:value]
  end
end
