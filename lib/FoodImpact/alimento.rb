 
class Alimento 
  attr_reader :nombre, :proteinas, :carbohidratos, :lipidos, :gei, :terreno
  def initialize(nombre, proteinas, carbohidratos, lipidos, gei, terreno)
    @nombre, @proteinas, @carbohidratos, @lipidos, @gei = nombre, proteinas, carbohidratos, lipidos, gei
    @terreno = terreno
  end

  def to_s 
   "Nombre: #{nombre}, Proteinas: #{proteinas}, Carbohidratos: #{carbohidratos}, Lípidos: #{lipidos}, GEI: #{gei}, Terreno: #{terreno}"
  end
  
  def valor_energetico
    @proteinas * 4 + @carbohidratos * 4 + @lipidos * 9
  end
end
