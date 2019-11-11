 
class Alimento 
  attr_reader :nombre
  def initialize(nombre, proteinas)
    @nombre, @proteinas = nombre, proteinas
  end
end
