class Regimen < Plato
  def initialize(nombre,alimentos)
    super(nombre,alimentos)
  end

  def gei
    food = @ingredientes.head
    gases = 0.0
    while food != nil
      gases += food[:value].gei
      food = food[:next]
    end
    gases
  end
end
