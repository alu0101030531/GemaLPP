#= Permite calcular las emisiones y uso del terreno de un plato
#=== Modo de uso
# carne = Alimento.new(1,2,3,4,5,6)
# papas = Alimento.new(6,5,4,3,2,1)
# lista = List.new
# lista.insert(carne)
# lista.insert(papas)
# Plato.new("carne con papas", lista)
class Regimen < Plato

  # Construye un Plato llamando a super
  def initialize(nombre,alimentos)
    super(nombre,alimentos)
  end

  # Devuelve la emisión de gases
  def gei
    food = @ingredientes.head
    gases = 0.0
    while food != nil
      gases += food[:value].gei * (food[:value].gramos / 1000.0)
      food = food[:next]
    end
    gases
  end

  # Devuelve el uso del terreno
  def terreno
    food = @ingredientes.head
    terreno = 0.0
    while food != nil
      terreno += food[:value].terreno * (food[:value].gramos)
      food = food[:next]
    end
    terreno
  end

  # Devuelve la eficiencia
  def eficiencia
    kcalorias / (terreno + gei)
  end

  # Devuelve la huella nutricional
  def huella
    if terreno < 800
      terreno_index = 1
    elsif terreno > 1200
      terreno_index = 3
    else
      terreno_index = 2
    end
    if kcalorias < 670
      energia_index = 1
    elsif kcalorias > 830
      energia_index = 3
    else
      energia_index = 2
    end
    (terreno_index + energia_index)/ 2
  end
end
