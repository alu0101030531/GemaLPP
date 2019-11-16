RSpec.describe List do
  before :each do
    @carne_de_vaca = Alimento.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
    @food_list = List.new(nil, nil)
  end

  it "Debe existir un constructor" do
    @test_list = List.new(nil, nil)
  end

  it "Debe poder insertar" do
    @food_list.insert(@producto)
  end
end
