# *Autor*:: Christian Jesús Pérez
# *Email*:: alu0101030531@ull.edu.es

Node = Struct.new(:value, :prev, :next)     # Nodos que formarán parte de la lista

#= Contenedor de objetos
#=== Modo de uso
# lista = List.new
# lista.insert(1)
# lista.insert(2)
# lista.last
class List
  include Enumerable
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

  # Devuelve head
  def head
    @head_
  end

  # Devuelve tail
  def tail
    @tail_
  end

  # Yield con cada elemento de la lista
  def each
    node = @head_
    while node != nil do
      yield node[:value]
      node = node[:next]
    end
  end
end
