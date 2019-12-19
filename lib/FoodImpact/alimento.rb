# *Autor*:: Christian Jesús Pérez
# *Email*:: alu0101030531@ull.edu.es

#= Representa un alimento y sus nutrientes
#=== Modo de uso:
# Alimento.new(Gramos, nombre, proteinas, carbos, lipidos, gases, terreno)
class Alimento
  include Comparable
  attr_reader :nombre, :proteinas, :carbohidratos, :lipidos, :gei, :terreno, :gramos

  # Construye un objeto alimento
  def initialize(gramos, nombre, proteinas, carbohidratos, lipidos, gei, terreno)
    @nombre, @proteinas, @carbohidratos, @lipidos, @gei = nombre, proteinas, carbohidratos, lipidos, gei
    @terreno = terreno
    @gramos = gramos
  end

  # Devuelve una cadena con los valores del alimento
  def to_s
    "Nombre: #{nombre}, Gramos: #{gramos}, Proteinas: #{proteinas}, Carbohidratos: #{carbohidratos}, Lípidos: #{lipidos}, GEI: #{gei}, Terreno: #{terreno}"
  end

  # Devuelve el valor energético del alimento
  def valor_energetico
    (@proteinas * 4 + @carbohidratos * 4 + @lipidos * 9) * (@gramos / 1000.0)
  end

  # Nos permite comparar alimentos
  def <=>(other)
    @gramos + @proteinas + @carbohidratos + @lipidos + @gei + @terreno <=> other.gramos + other.proteinas + other.carbohidratos + other.lipidos +
    other.gei + other.terreno
  end
end
