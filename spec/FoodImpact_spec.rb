RSpec.describe FoodImpact do
  it "has a version number" do
    expect(FoodImpact::VERSION).not_to be nil
  end
end

RSpec.describe Alimento do
  it "Debe existir un nombre para el alimento" do
    alimento = Alimento.new("Carne de Vaca")
    expect(alimento.nombre).to eq("Carne de Vaca")
  end
end
