class Regimen < Plato
  def initialize(nombre,alimentos)
    super(nombre,alimentos)
  end

  def gei
    food = @ingredientes.head
    gases = 0.0
    while food != nil
      gases += food[:value].gei * (food[:value].gramos / 1000.0)
      food = food[:next]
    end
    gases
  end

  def terreno
    food = @ingredientes.head
    terreno = 0.0
    while food != nil
      terreno += food[:value].terreno * (food[:value].gramos / 1000.0)
      food = food[:next]
    end
    terreno
  end

end
