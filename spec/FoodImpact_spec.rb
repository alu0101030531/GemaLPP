RSpec.describe FoodImpact do
  it "has a version number" do
    expect(FoodImpact::VERSION).not_to be nil
  end
end

RSpec.describe Alimento do
  before :each do
    @carne_de_vaca = Alimento.new("Carne de Vaca", 21.1, 0.0)
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
end
