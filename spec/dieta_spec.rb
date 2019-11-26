RSpec.describe Regimen do
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
    @regimen = Regimen.new("Escaldon", @plato_list)
  end
  it "Emisiones de gases de la dieta" do
    expect(@regimen.gei).to be_within(0.01).of(0.915)
  end
  it "Uso del terreno" do
    expect(@regimen.terreno).to be_within(0.01).of(1.074)
  end
  it "Calcula la eficiencia" do
    expect(@regimen.eficiencia).to be_within(0.01).of(37.22)
  end
  it "Debe ser una instancia de Regimen" do
    expect(@regimen.instance_of? Regimen).to eq(true)
  end
  it "Tipo del objeto" do
    expect(@regimen.class).to eq(Regimen)
  end
  it "is_a" do
    expect(@regimen.is_a? Regimen).to eq(true)
  end
  it "is_a con la super" do
    expect(@regimen.is_a? Plato).to eq(true)
  end
end

RSpec.describe Regimen do
  before :each do 
    # Alimentos
    @carne_de_vaca = Alimento.new(100, "Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
    @nuez = Alimento.new(10, "Nuez", 20.0, 21.0, 54.0 ,0.3, 7.9)
    @pollo = Alimento.new(150, "Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
    @huevos = Alimento.new(10,"Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
    @cerveza = Alimento.new(500, "Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
    @carne_de_cordero = Alimento.new(90, "Carne de cordero", 18.0, 0.0, 17.0, 20.0, 185.0)
    @camarones = Alimento.new(30, "Camarones", 17.6, 1.5, 0.6, 18.0, 2.0)
    @chocolate = Alimento.new(15, "Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
    @salmon = Alimento.new(120, "Salmon", 19.9, 0.0, 13.6, 6.0, 3.7)
    @tofu = Alimento.new(70, "Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
    @lentejas = Alimento.new(140, "Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
    @leche = Alimento.new(500, "Leche", 10.0, 3, 7, 20, 5.7)

    # Dietas
    # Española
    @e_desayuno = List.new(nil, nil)
    @e_desayuno.insert(@huevos)
    @e_desayuno.insert(@salmon)
    @desayuno_e = Regimen.new("H y S", @e_desayuno)
    @e_almuerzo = List.new(nil, nil)
    @e_almuerzo.insert(@carne_de_vaca)
    @e_almuerzo.insert(@nuez)
    @e_almuerzo.insert(@chocolate)
    @almuerzo_e = Regimen.new("Carne", @e_almuerzo)
    @e_cena = List.new(nil, nil)
    @e_cena.insert(@lentejas)
    @e_cena.insert(@camarones)
    @cena_e = Regimen.new("Lentejas", @e_cena)
    @spanish = List.new(nil, nil)
    @spanish.insert(@desayuno_e)
    @spanish.insert(@almuerzo_e)
    @spanish.insert(@cena_e)

    # Vasca
    @v_desayuno = List.new(nil, nil)
    @v_desayuno.insert(@leche)
    @v_desayuno.insert(@chocolate)
    @desayuno_v = Regimen.new("H y S", @v_desayuno)
    @v_almuerzo = List.new(nil, nil)
    @v_almuerzo.insert(@lentejas)
    @v_almuerzo.insert(@camarones)
    @v_almuerzo.insert(@chocolate)
    @almuerzo_v = Regimen.new("Carne", @v_almuerzo)
    @v_cena = List.new(nil, nil)
    @v_cena.insert(@carne_de_vaca)
    @v_cena.insert(@camarones)
    @cena_v = Regimen.new("Lentejas", @v_cena)
    @vasca = List.new(nil, nil)
    @vasca.insert(@desayuno_v)
    @vasca.insert(@almuerzo_v)
    @vasca.insert(@cena_v)

    #  Vegetariana
    @ve_desayuno = List.new(nil, nil)
    @ve_desayuno.insert(@huevos)
    @ve_desayuno.insert(@leche)
    @desayuno_ve = Regimen.new("H y S", @ve_desayuno)
    @ve_almuerzo = List.new(nil, nil)
    @ve_almuerzo.insert(@tofu)
    @ve_almuerzo.insert(@nuez)
    @ve_almuerzo.insert(@chocolate)
    @almuerzo_ve = Regimen.new("Carne", @ve_almuerzo)
    @ve_cena = List.new(nil, nil)
    @ve_cena.insert(@tofu)
    @ve_cena.insert(@cerveza)
    @cena_ve = Regimen.new("Lentejas", @ve_cena) 
    @vege = List.new(nil, nil)
    @vege.insert(@desayuno_ve)
    @vege.insert(@almuerzo_ve)
    @vege.insert(@cena_ve)


    # Vegetaliana
    @g_desayuno = List.new(nil, nil)
    @g_desayuno.insert(@huevos)
    @g_desayuno.insert(@tofu)
    @desayuno_g = Regimen.new("H y S", @g_desayuno)
    @g_almuerzo = List.new(nil, nil)
    @g_almuerzo.insert(@leche)
    @g_almuerzo.insert(@nuez)
    @g_almuerzo.insert(@chocolate)
    @almuerzo_g = Regimen.new("Carne", @g_almuerzo)
    @g_cena = List.new(nil, nil)
    @g_cena.insert(@lentejas)
    @g_cena.insert(@nuez)
    @cena_g = Regimen.new("Lentejas", @g_cena) 
    @vegetaliana = List.new(nil, nil)
    @vegetaliana.insert(@desayuno_g)
    @vegetaliana.insert(@almuerzo_g)
    @vegetaliana.insert(@cena_g)

    # Locura por la carne
    @c_desayuno = List.new(nil, nil)
    @c_desayuno.insert(@huevos)
    @c_desayuno.insert(@salmon)
    @desayuno_c = Regimen.new("H y S", @c_desayuno)
    @c_almuerzo = List.new(nil, nil)
    @c_almuerzo.insert(@carne_de_vaca)
    @c_almuerzo.insert(@camarones)
    @c_almuerzo.insert(@chocolate)
    @almuerzo_c = Regimen.new("Carne", @c_almuerzo)
    @c_cena = List.new(nil, nil)
    @c_cena.insert(@carne_de_cordero)
    @c_cena.insert(@camarones)
      @cena_c = Regimen.new("Lentejas", @c_cena)
    @carne = List.new(nil, nil)
    @carne.insert(@desayuno_c)
    @carne.insert(@almuerzo_c)
    @carne.insert(@cena_c) 
  end
  it "Comparación < " do
    almuerzo = @spanish.head[:next]
    desayuno = almuerzo[:prev]
    expect(desayuno[:value].kcalorias < almuerzo[:value].kcalorias).to eq(false)
  end

  it "Comparación > " do
    almuerzo = @vasca.head[:next]
    almuerzo2 = @vege.head[:next]
    expect(almuerzo[:value].kcalorias > almuerzo2[:value].kcalorias).to eq(true)
  end
    
end

