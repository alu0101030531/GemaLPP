class Dieta
  def initialize(list) 
    @list_ = List.new(nil,nil)
    @list_ = list 
  end

  # Obtiene la emisión de gases de la dieta en un día
  def geiPerDay()
    aux = @list_.head
    sum_gei = 0.0
    while aux != nil do
      sum_gei += aux[:value].gei
      aux = aux[:next]
    end
    sum_gei
  end
end
