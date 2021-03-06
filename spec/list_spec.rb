RSpec.describe List do
  before :each do
    @carne_de_vaca = Alimento.new(30, "Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
    @nuez = Alimento.new(30, "Nuez", 20.0, 21.0, 54.0 ,0.3, 7.9)
    @pollo = Alimento.new(30, "Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
    @huevos = Alimento.new(30, "Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
    @cerveza = Alimento.new(30, "Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
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

RSpec.describe List do
  before :each do
    @list = List.new(nil, nil)
    @carne_de_vaca = Alimento.new(30, "Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
    @nuez = Alimento.new(30, "Nuez", 20.0, 21.0, 54.0 ,0.3, 7.9)
    @pollo = Alimento.new(30, "Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
    @huevos = Alimento.new(30, "Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
    @cerveza = Alimento.new(30, "Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
    @list.insert(@carne_de_vaca)
    @list.insert(@nuez)
    @list.insert(@pollo)
  end
  it "Método collect" do
    expect(@list.collect{ "cat" }).to eq(["cat","cat","cat"])
  end
  it "Método select" do
    expect(@list.select { |alimento| alimento.proteinas == 21.1}).to eq([@carne_de_vaca])
  end
  it "Método max" do
    expect(@list.max).to eq(@carne_de_vaca)
  end
  it "Método min" do
    expect(@list.min).to eq(@pollo)
  end
  it "Método sort" do
    expect(@list.sort).to eq([@pollo,@nuez,@carne_de_vaca])
  end
end

RSpec.describe Dieta do
  before :each do 
    @carne_de_vaca = Alimento.new(30, "Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
    @nuez = Alimento.new(30, "Nuez", 20.0, 21.0, 54.0 ,0.3, 7.9)
    @pollo = Alimento.new(30, "Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
    @huevos = Alimento.new(30, "Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
    @cerveza = Alimento.new(30, "Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
    @carne_de_cordero = Alimento.new(30, "Carne de cordero", 18.0, 0.0, 17.0, 20.0, 185.0)
    @camarones = Alimento.new(30, "Camarones", 17.6, 1.5, 0.6, 18.0, 2.0)
    @chocolate = Alimento.new(30, "Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
    @Salmon = Alimento.new(30, "Salmon", 19.9, 0.0, 13.6, 6.0, 3.7)
    @tofu = Alimento.new(30, "Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
    @lentejas = Alimento.new(30, "Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
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
    @carne_de_vaca = Alimento.new(30, "Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
    @nuez = Alimento.new(30, "Nuez", 20.0, 21.0, 54.0 ,0.3, 7.9)
    @pollo = Alimento.new(30, "Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
    @huevos = Alimento.new(30, "Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
    @cerveza = Alimento.new(30, "Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
    @carne_de_cordero = Alimento.new(30, "Carne de cordero", 18.0, 0.0, 17.0, 20.0, 185.0)
    @camarones = Alimento.new(30, "Camarones", 17.6, 1.5, 0.6, 18.0, 2.0)
    @chocolate = Alimento.new(30, "Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
    @Salmon = Alimento.new(30, "Salmon", 19.9, 0.0, 13.6, 6.0, 3.7)
    @tofu = Alimento.new(30, "Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
    @lentejas = Alimento.new(30, "Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
    @leche = Alimento.new(30, "Leche", 3.3, 4.8, 3.2, 3.2, 8.9)
    @food_list = List.new(nil, nil)
    @food_list.insert(@carne_de_vaca)
    @food_list.insert(@chocolate)
    @food_list.insert(@nuez)
    @food_list.insert(@cerveza)
    @food_list.insert(@cerveza)
    @diet = Dieta.new(@food_list)
    @vasca_diet = List.new(nil, nil)
    @vasca_diet.insert(@chocolate)
    @vasca_diet.insert(@nuez)
    @vasca_diet.insert(@lentejas)
    @vasca_diet.insert(@cerveza)
    @vasca = Dieta.new(@vasca_diet)
    @veg_diet = List.new(nil, nil)
    @veg_diet.insert(@nuez)
    @veg_diet.insert(@tofu)
    @veg_diet.insert(@lentejas)
    @veg_diet.insert(@cerveza)
    @veg_diet.insert(@leche)
    @veg_diet.insert(@leche)
    @veg = Dieta.new(@veg_diet)
    @carne_diet = List.new(nil, nil)
    @carne_diet.insert(@carne_de_vaca)
    @carne_diet.insert(@pollo)
    @carne_diet.insert(@Salmon)
    @carnivora = Dieta.new(@carne_diet)
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

  it "Calcula el GEI diario para la dieta vasca" do
    expect(@vasca.geiPerDay).to  be_within(0.01).of(3.239)
  end
  
  it "Calcula el GEI por año para la dieta vasca" do
    expect(@vasca.geiPerYear).to be_within(0.01).of(1182.59)
  end

  it "Calcula el uso del terreno para la dieta vasca" do
    expect(@vasca.terreno).to be_within(0.01).of(14.92)
  end
  
  it "Calcula el GEI diario para la dieta vegetariana" do
    expect(@veg.geiPerDay).to be_within(0.01).of(9.34)
  end

  it "Calcula el GEI anual para la dieta vegetariana" do
    expect(@veg.geiPerYear).to be_within(0.01).of(3409.1)
  end

  it "Calcula el uso del terreno para la dieta vegetariana" do
    expect(@veg.terreno).to be_within(0.01).of(31.52)
  end
end


