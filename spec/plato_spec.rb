RSpec.describe Plato do
  before :each do
    @plato = Plato.new("Escaldon")
  end

  it "Nombre del plato" do
    expect(@plato.nombre).to eq("Escaldon")
  end
end
