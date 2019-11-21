RSpec.describe List do
  before :each do
    @carne_de_vaca = Alimento.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
    @nuez = Alimento.new("Nuez", 20.0, 21.0, 54.0 ,0.3, 7.9)
    @pollo = Alimento.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
    @huevos = Alimento.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
    @cerveza = Alimento.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
    @food_list = List.new(nil, nil)
    @food_list.insert(@nuez)
    @food_list.insert(@pollo)
    @food_list.insert(@huevos) 
    @food_list.insert(@cerveza)
    @food_list.insert(@carne_de_vaca)
  end

  it "Debe existir un constructor" do
    @test_list = List.new(nil, nil)
  end

  it "Debe poder insertar" do
    @food_list.insert(@nuez)
  end

  it "Extrae el último elemento" do
    expect(@food_list.last).to eq(@carne_de_vaca)
  end
  
  it "Extrae el primer elemento" do
    expect(@food_list.first).to eq(@nuez)
  end

  it "Debe devolver la cabeza" do
    @food_list.head
  end
end

RSpec.describe Dieta do
  before :each do 
    @carne_de_vaca = Alimento.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
    @nuez = Alimento.new("Nuez", 20.0, 21.0, 54.0 ,0.3, 7.9)
    @pollo = Alimento.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
    @huevos = Alimento.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
    @cerveza = Alimento.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
    @carne_de_cordero = Alimento.new("Carne de cordero", 18.0, 0.0, 17.0, 20.0, 185.0)
    @camarones = Alimento.new("Camarones", 17.6, 1.5, 0.6, 18.0, 2.0)
    @chocolate = Alimento.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
    @Salmon = Alimento.new("Salmon", 19.9, 0.0, 13.6, 6.0, 3.7)
    @tofu = Alimento.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
    @lentejas = Alimento.new("Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
    @food_list = List.new(nil, nil)
    @food_list.insert(@carne_de_vaca)
    @food_list.insert(@nuez)
    @food_list.insert(@pollo)
    @food_list.insert(@huevos)
    @food_list.insert(@cerveza)
    @diet = Dieta.new(@food_list)
  end

  it "La clase dieta tiene un constructor" do
    dieta = Dieta.new(@food_list)  
  end

  it "Permite calcular el GEI diario para la dieta" do
    expect(@diet.geiPerDay).to be_within(0.01).of(60.44) 
  end

  it "Permite calcular el GEI anual para la dieta" do
    expect(@diet.geiPerYear).to be_within(0.01).of(22060.6)
  end

  it "Permite calcular el uso del terreno" do
    expect(@diet.terreno).to be_within(0.01).of(184.92)
  end 
end

RSpec.describe Dieta do
  before :all do
    @carne_de_vaca = Alimento.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
    @nuez = Alimento.new("Nuez", 20.0, 21.0, 54.0 ,0.3, 7.9)
    @pollo = Alimento.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
    @huevos = Alimento.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
    @cerveza = Alimento.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
    @carne_de_cordero = Alimento.new("Carne de cordero", 18.0, 0.0, 17.0, 20.0, 185.0)
    @camarones = Alimento.new("Camarones", 17.6, 1.5, 0.6, 18.0, 2.0)
    @chocolate = Alimento.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
    @Salmon = Alimento.new("Salmon", 19.9, 0.0, 13.6, 6.0, 3.7)
    @tofu = Alimento.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
    @lentejas = Alimento.new("Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
    @food_list = List.new(nil, nil)
    @food_list.insert(@carne_de_vaca)
    @food_list.insert(@chocolate)
    @food_list.insert(@nuez)
    @food_list.insert(@cerveza)
    @food_list.insert(@cerveza)
    @diet = Dieta.new(@food_list)
  end

  it "Calcula el GEI diario para la dieta española" do
    expect(@diet.geiPerDay).to be_within(0.01).of(53.08)
  end
  
  it "Calcula el GEI anual para la dieta española" do
    expect(@diet.geiPerYear).to be_within(0.01).of(19374.2)
  end

  it "Calcula el uso de terreno para la dieta española" do
    expect(@diet.terreno).to be_within(0.01).of(175.74)
  end
end


