 
class Alimento 
  attr_reader :nombre, :proteinas, :carbohidratos, :lipidos, :gei, :terreno
  def initialize(nombre, proteinas, carbohidratos, lipidos, gei, terreno)
    @nombre, @proteinas, @carbohidratos, @lipidos, @gei = nombre, proteinas, carbohidratos, lipidos, gei
    @terreno = terreno
  end
end
