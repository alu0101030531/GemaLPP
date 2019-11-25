RSpec.describe Plato do
  before :each do
    @plato = Plato.new("Escaldón")
  end

  it "Nombre del plato" do
    expect(@plato.nombre).to eq("Escaldón")
  end
end
