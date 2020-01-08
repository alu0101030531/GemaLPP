class PlatoDSL
  def initialize(&block)
    @name = ""
    @food = []
    if block_given?
      if block.arity == 1
        yield self
      else
        instance_eval(&block)
      end
    end
  end

  def nombre(name)
    @name = name
  end

  def alimento(description = {})
    new_food = ""
    new_food += description[:descripcion].to_s
    new_food += " "
    new_food += description[:gramos].to_s
    new_food += " "
    new_food += description[:proteinas].to_s
    new_food += " "
    new_food += description[:lipidos].to_s
    new_food += " "
    new_food += description[:carbohidratos].to_s
    new_food += " "
    new_food += description[:gei].to_s
    new_food += " "
    new_food += description[:terreno].to_s
    @food << new_food
  end

  def to_s
    out = @name + ", "
    @food.each { |x| out << "#{x}, "}
    out
  end
end

class MenuDSL
  def initialize(nombre, &block)
    @name = nombre
    @description = ""
    @foods = []
    @price = ""
    if block_given?
      if block.arity == 1
        yield self
      else
        instance_eval(&block)
      end
    end
  end

  def precio(pre)
    @price = pre
  end

  def descripcion(desc)
    description = desc
  end

  def componente (price, &block)
    plato = PlatoDSL.new(&block)
    plato = plato.to_s
    plato << " #{price}"
    @foods << plato
  end

  def to_s
    out = ""
    @foods.each { |x| out << "#{x}, " }
    out
  end
end
