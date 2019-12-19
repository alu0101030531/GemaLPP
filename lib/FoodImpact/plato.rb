# *Autor*:: Christian Jesús Pérez
# *Email*:: alu0101030531@ull.edu.es

#= Representa un plato (conjunto de alimentos)
#=== Modo de uso
# carne = Alimento.new(1,2,3,4,5,6)
# papas = Alimento.new(6,5,4,3,2,1)
# lista = List.new
# lista.insert(carne)
# lista.insert(papas)
# Plato.new("carne con papas", lista)
class Plato
  include Comparable
  attr_reader :nombre, :total_nutricional

  # Construye un objeto Plato
  def initialize(nombre,ingredientes)
    @nombre = nombre
    @ingredientes = ingredientes
    food = @ingredientes.head
    @total_nutricional = 0.0
    while food != nil do
      @total_nutricional += food[:value].proteinas * (food[:value].gramos / 1000.0)
      @total_nutricional += food[:value].carbohidratos * (food[:value].gramos / 1000.0)
      @total_nutricional += food[:value].lipidos * (food[:value].gramos / 1000.0)
      food = food[:next]
    end
  end

  # Devuelve las proteinas del plato
  def proteinas
    food = @ingredientes.head
    protein = 0.0
    while food != nil do
      protein += food[:value].proteinas * (food[:value].gramos / 1000.0)
      food = food[:next]
    end
    protein * (100.0 / @total_nutricional)
  end

  # Develve los carbohidratos del plato
  def carbohidratos
    food = @ingredientes.head
    carbos = 0.0
    while food != nil do
      carbos += food[:value].carbohidratos * (food[:value].gramos / 1000.0)
      food = food[:next]
    end
    carbos * (100.0 / @total_nutricional)
  end

  # Devuelve los lipidos del plato
  def lipidos
    food = @ingredientes.head
    lipidos = 0.0
    while food != nil do
      lipidos += food[:value].lipidos * (food[:value].gramos / 1000.0)
      food = food[:next]
    end
    lipidos * (100.0 / @total_nutricional)
  end

  # Devuelve las kilocalorías del plato
  def kcalorias
    food = @ingredientes.head
    calorias = 0.0
    while food != nil do
      calorias += food[:value].valor_energetico
      food = food[:next]
    end
    calorias
  end

  # Devuelve el plato formateado
  def to_s
    format = "#{nombre}: "
    food = @ingredientes.head
    while food != @ingredientes.tail do
      format += "#{food[:value].nombre}, "
      food = food[:next]
    end
    format += "#{@ingredientes.tail[:value].nombre}"
  end

  # Permite comparar platos por su valor nutricional
  def <=>(other)
    @total_nutricional <=> other.total_nutricional
  end
end
