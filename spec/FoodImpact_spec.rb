RSpec.describe FoodImpact do
  it "has a version number" do
    expect(FoodImpact::VERSION).not_to be nil
  end
end

RSpec.describe Alimento do
  before :each do
    @carne_de_vaca = Alimento.new("Carne de Vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
  end

  it "Debe existir un nombre para el alimento" do
    expect(@carne_de_vaca.nombre).to eq("Carne de Vaca")
  end
  it "Debe tener unas proteinas el alimento" do
    expect(@carne_de_vaca.proteinas).to eq(21.1)
  end
  it "Debe tener carbohidratos el alimento" do
    expect(@carne_de_vaca.carbohidratos).to eq(0.0)
  end
  it "Debe tener Lípidos el alimento" do
    expect(@carne_de_vaca.lipidos).to eq(3.1)
  end
  it "Debe tener unos GEI asociados" do
    expect(@carne_de_vaca.gei).to eq(50.0)
  end
  it "Debe tener un uso de terreno" do
    expect(@carne_de_vaca.terreno).to eq(164.0)
  end
  it "Debe existir un método con el alimento formateado" do
    expect(@carne_de_vaca.to_s).to eq("Nombre: Carne de Vaca, Proteinas: 21.1, Carbohidratos: 0.0, Lípidos: 3.1, GEI: 50.0, Terreno: 164.0")
  end
  it "Debe calcular el valor energético del alimento" do
    expect(@carne_de_vaca.valor_energetico).to be_within(0.01).of(112.3)
  end
end
