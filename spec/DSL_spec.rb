RSpec.describe PlatoDSL do
  before :each do
    @plato = PlatoDSL.new do
    nombre      "Hamburguesa especial de la casa"
    alimento    :descripcion => "carne de vaca",
                :gramos => 100,
                :proteinas => 20.0,
                :lipidos => 21.0,
                :carbohidratos => 54.0,
                :gei => 0.3,
                :terreno => 7.9
    alimento    :descripcion => "huevo",
                :gramos => 20,
                :proteinas => 5.0,
                :lipidos => 2.0,
                :carbohidratos => 9.0,
                :gei => 0.1,
                :terreno => 8.0
    end
  end
  it "Crea un plato" do
    expect(@plato.to_s).to eq("Hamburguesa especial de la casa, carne de vaca 100 20.0 21.0 54.0 0.3 7.9, huevo 20 5.0 2.0 9.0 0.1 8.0, ")
  end
end

RSpec.describe MenuDSL do
  before :each do
    @menu = MenuDSL.new("Combinado no. 1") do
      descripcion "hamburguesa, papas, refresco"
      componente 4.25  do
        nombre "Hamburguesa especial de la casa"
        alimento    :descripcion => "carne de vaca",
                    :gramos => 100,
                    :proteinas => 20.0,
                    :lipidos => 21.0,
                    :carbohidratos => 54.0,
                    :gei => 0.3,
                    :terreno => 7.9
        alimento    :descripcion => "huevo",
                    :gramos => 20,
                    :proteinas => 5.0,
                    :lipidos => 2.0,
                    :carbohidratos => 9.0,
                    :gei => 0.1,
                    :terreno => 8.0
      end
      componente 1.75  do
        nombre "papas pequeñas"
        alimento    :descripcion => "papas pequeñas",
                    :gramos => 100,
                    :proteinas => 20.0,
                    :lipidos => 21.0,
                    :carbohidratos => 54.0,
                    :gei => 0.3,
                    :terreno => 7.9
      end
      componente 1.50  do
        nombre "Refresco"
        alimento    :descripcion => "Refresco",
                    :gramos => 100,
                    :proteinas => 20.0,
                    :lipidos => 21.0,
                    :carbohidratos => 54.0,
                    :gei => 0.3,
                    :terreno => 7.9
      end
      precio      7.50
    end
  end

  it "Crea un menu" do
    expect(@menu.to_s).to eq("Hamburguesa especial de la casa, carne de vaca 100 20.0 21.0 54.0 0.3 7.9, huevo 20 5.0 2.0 9.0 0.1 8.0,  4.25, papas pequeñas, papas pequeñas 100 20.0 21.0 54.0 0.3 7.9,  1.75, Refresco, Refresco 100 20.0 21.0 54.0 0.3 7.9,  1.5, ")
  end
end
