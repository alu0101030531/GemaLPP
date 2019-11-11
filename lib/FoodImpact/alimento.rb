 
class Alimento 
  attr_reader :nombre, :proteinas, :carbohidratos
  def initialize(nombre, proteinas, carbohidratos, lipidos)
    @nombre, @proteinas, @carbohidratos, @lipidos = nombre, proteinas, carbohidratos, lipidos
  end
end
