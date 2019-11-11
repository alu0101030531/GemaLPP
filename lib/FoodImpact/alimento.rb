 
class Alimento 
  attr_reader :nombre, :proteinas
  def initialize(nombre, proteinas, carbohidratos)
    @nombre, @proteinas, @carbohidratos = nombre, proteinas, carbohidratos
  end
end
