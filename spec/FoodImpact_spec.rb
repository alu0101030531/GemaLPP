RSpec.describe FoodImpact do
  it "has a version number" do
    expect(FoodImpact::VERSION).not_to be nil
  end
end

RSpec.describe Alimento do
  before :each do
    @Nuez = Alimento.new("Nuez", 20.0, 21.0, 54.0 ,0.3, 7.9)
    @Pollo = Alimento.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
    @Huevos = Alimento.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
    @Cerveza = Alimento.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
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
  it "Debe calcular el impacto ambiental de un hombre" do
    expect(@Nuez.gei + @Pollo.gei + @Huevos.gei + @Cerveza.gei).to be_within(0.01).of(10.44)
    expect(@Nuez.terreno + @Pollo.terreno + @Huevos.terreno + @Cerveza.terreno).to be_within(0.01).of(20.92)
  end 
  it "Debe calcular el impacto ambiental de una mujer" do
    expect(@Nuez.gei + @Pollo.gei + @Huevos.gei + @Cerveza.gei).to be_within(0.01).of(10.44)
    expect(@Nuez.terreno + @Pollo.terreno + @Huevos.terreno + @Cerveza.terreno).to be_within(0.01).of(20.92)
  end
  context "Comparando objetos" do
    it "operador < " do
      expect(@Nuez < @carne_de_vaca).to eq(true)
    end
    it "operador >" do
      expect(@Nuez > @carne_de_vaca).to eq(false)
    end
    it "operador ==" do
      expect(@carne_de_vaca == @carne_de_vaca).to eq(true)
    end
    it "operador <=" do
      expect(@Pollo <= @carne_de_vaca).to eq(true)
    end
    it "operador >=" do
      expect(@carne_de_vaca >= @Pollo).to eq(true)
    end
    it "método between" do
      expect(@Nuez.between?(@Pollo, @carne_de_vaca)).to eq(true)
    end
    it "método clamp" do
      expect(@carne_de_vaca.clamp(@Pollo, @Nuez)).to eq(@Nuez)
    end
  end
end
