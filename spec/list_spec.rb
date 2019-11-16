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
end

RSpec.describe Dieta do
  before :each do 
    @carne_de_vaca = Alimento.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
    @nuez = Alimento.new("Nuez", 20.0, 21.0, 54.0 ,0.3, 7.9)
    @pollo = Alimento.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
    @huevos = Alimento.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
    @cerveza = Alimento.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
    @food_list = List.new(nil, nil)
    @food_list.insert(@carne_de_vaca)
    @food_list.insert(@nuez)
    @food_list.insert(@pollo)
    @food_list.insert(@huevos)
    @food_list.insert(@cerveza)
  end

  it "La clase dieta tiene un constructor" do
    dieta = Dieta.new(@food_list)  
  end
end


