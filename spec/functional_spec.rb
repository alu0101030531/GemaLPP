RSpec.describe "menús" do
  before :each do

    # Alimentos
    @carne_de_vaca = Alimento.new(100, "Carne de vaca", 21.1, 0.0, 3.1, 22.0, 1300.0)
    @nuez = Alimento.new(10, "Nuez", 20.0, 21.0, 54.0 ,1000, 1300.9)
    @pollo = Alimento.new(150, "Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
    @huevos = Alimento.new(10,"Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
    @cerveza = Alimento.new(500, "Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
    @carne_de_cordero = Alimento.new(90, "Carne de cordero", 18.0, 0.0, 17.0, 20.0, 185.0)
    @camarones = Alimento.new(30, "Camarones", 17.6, 1.5, 0.6, 18.0, 2.0)
    @chocolate = Alimento.new(15, "Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
    @salmon = Alimento.new(120, "Salmon", 19.9, 0.0, 13.6, 6.0, 3.7)
    @tofu = Alimento.new(70, "Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
    @lentejas = Alimento.new(140, "Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
    @leche = Alimento.new(500, "Leche", 10.0, 3, 7, 20, 5.7)

    # Platos
    @e_desayuno = List.new(nil, nil)
    @e_desayuno.insert(@huevos)
    @e_desayuno.insert(@salmon)
    @desayuno_e = Regimen.new("H y S", @e_desayuno)
    @e_almuerzo = List.new(nil, nil)
    @e_almuerzo.insert(@carne_de_vaca)
    @e_almuerzo.insert(@nuez)
    @e_almuerzo.insert(@chocolate)
    @almuerzo_e = Regimen.new("Carne", @e_almuerzo)
    @e_cena = List.new(nil, nil)
    @e_cena.insert(@lentejas)
    @e_cena.insert(@camarones)
    @cena_e = Regimen.new("Lentejas", @e_cena)
    @menu = [@desayuno_e, @almuerzo_e, @cena_e]
    @precios = [5.6, 12.3, 10.0]
  end

  it "Un plato debe tener una huella nutricional" do
    expect(@almuerzo_e.huella).to eq(2)
  end

  it "Calcular el máximo de huella nutricional" do
    expect(@menu.max {|a, b| a.huella <=> b.huella}).to eq(@almuerzo_e)
  end

  it "Incrementar en proporción" do
    max = (@menu.max {|a, b| a.huella <=> b.huella})
    expect(@precios.collect {|a| a + @precios[@menu.index(max)] }).to eq([17.9,24.6,22.3])
  end
end
