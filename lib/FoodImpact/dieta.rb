# *Autor*:: Christian Jesús Pérez
# *Email*:: alu0101030531@ull.edu.es

#=  Representa un conjunto de alimentos
#=== Modo de uso
# carne = Alimento.new(100,2,3,4,6,5)
# lista = List.new
# list.insert carne
# Dieta.new(lista)
class Dieta
  def initialize(list)
    @list_ = List.new(nil,nil)
    @list_ = list
  end

  # Obtiene la emisión de gases de la dieta en un día
  def geiPerDay
    aux = @list_.head
    sum_gei = 0.0
    while aux != nil do
      sum_gei += aux[:value].gei
      aux = aux[:next]
    end
    sum_gei
  end

  # Obtiene la emision de gases anual
  def geiPerYear
    365 * geiPerDay
  end

  # Obtiene el uso de terreno
  def terreno
    aux = @list_.head
    sum_terreno = 0.0
    while aux != nil do
      sum_terreno += aux[:value].terreno
      aux = aux[:next]
    end
    sum_terreno
  end
end
