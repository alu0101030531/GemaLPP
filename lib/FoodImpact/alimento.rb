class Alimento 
  include Comparable
  attr_reader :nombre, :proteinas, :carbohidratos, :lipidos, :gei, :terreno, :gramos

  def initialize(gramos, nombre, proteinas, carbohidratos, lipidos, gei, terreno)
    @nombre, @proteinas, @carbohidratos, @lipidos, @gei = nombre, proteinas, carbohidratos, lipidos, gei
    @terreno = terreno
    @gramos = gramos
  end

  def to_s 
    "Nombre: #{nombre}, Gramos: #{gramos}, Proteinas: #{proteinas}, Carbohidratos: #{carbohidratos}, Lípidos: #{lipidos}, GEI: #{gei}, Terreno: #{terreno}"
  end
  
  def valor_energetico
    (@proteinas * 4 + @carbohidratos * 4 + @lipidos * 9) * (@gramos / 1000.0)
  end

  def <=>(other)
    @gramos + @proteinas + @carbohidratos + @lipidos + @gei + @terreno <=> other.gramos + other.proteinas + other.carbohidratos + other.lipidos +
    other.gei + other.terreno
  end
end
