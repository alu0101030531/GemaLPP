RSpec.describe Plato do
  before :each do
    @plato_list = List.new(nil, nil)
    @carne_de_vaca = Alimento.new(100, "Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
    @nuez = Alimento.new(5, "Nuez", 20.0, 21.0, 54.0 ,0.3, 7.9)
    @pollo = Alimento.new(150, "Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
    @huevos = Alimento.new(10,"Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
    @cerveza = Alimento.new(500, "Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
    @carne_de_cordero = Alimento.new(90, "Carne de cordero", 18.0, 0.0, 17.0, 20.0, 185.0)
    @camarones = Alimento.new(30, "Camarones", 17.6, 1.5, 0.6, 18.0, 2.0)
    @chocolate = Alimento.new(15, "Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
    @salmon = Alimento.new(120, "Salmon", 19.9, 0.0, 13.6, 6.0, 3.7)
    @tofu = Alimento.new(70, "Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
    @lentejas = Alimento.new(140, "Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
    @plato_list.insert(@lentejas)
    @plato_list.insert(@tofu)
    @plato_list.insert(@salmon)
    @plato = Plato.new("Escaldon", @plato_list)
  end

  it "Nombre del plato" do
    expect(@plato.nombre).to eq("Escaldon")
  end
  it "Proteinas del plato" do
    expect(@plato.proteinas).to be_within(0.01).of(39.44)
  end
  it "Carbohidratos del plato" do
    expect(@plato.carbohidratos).to be_within(0.01).of(46.87)
  end
  it "Lipidos del plato" do
    expect(@plato.lipidos).to be_within(0.01).of(13.68)
  end
  it "KiloCalorias del plato" do
    expect(@plato.kcalorias).to be_within(0.01).of(74.08)
  end
  it "Plato formateado" do
    expect(@plato.to_s).to eq("Escaldon: lentejas, tofu, salmon")
  end
end
