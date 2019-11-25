class Plato 
  attr_reader :nombre
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

  def proteinas
    food = @ingredientes.head
    protein = 0.0
    while food != nil do
      protein += food[:value].proteinas * (food[:value].gramos / 1000.0)
      food = food[:next]
    end 
    protein * (100.0 / @total_nutricional)
  end

  def carbohidratos
    food = @ingredientes.head
    carbos = 0.0
    while food != nil do
      carbos += food[:value].carbohidratos * (food[:value].gramos / 1000.0)
      food = food[:next]
    end
    carbos * (100.0 / @total_nutricional)
  end

  def lipidos
    food = @ingredientes.head
    lipidos = 0.0
    while food != nil do
      lipidos += food[:value].lipidos * (food[:value].gramos / 1000.0)
      food = food[:next]
    end
    lipidos * (100.0 / @total_nutricional)
  end

  def kcalorias
    food = @ingredientes.head
    calorias = 0.0
    while food != nil do
      calorias += food[:value].valor_energetico
      food = food[:next]
    end
    calorias
  end
end
