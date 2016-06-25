require_relative '../model/EfectoAumentarMasa'
require_relative '../model/EfectoNulo'

class Asteroide 

  attr_accessor :vida, :masa

  @vida
  @masa
  @choques_posibles

  def initialize(vida, masa)     
    
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new
    @choques_posibles[Nave] = EfectoAumentarMasa.new(10)
    @choques_posibles[Misil] = EfectoNulo.new()
    @choques_posibles[Bomba] = EfectoNulo.new()
  end

  def chocar(objeto_espacial)

    este_objeto_espacial_antes_de_chocar = (self.class).new(self.vida, self.masa)
    vida_objeto_chocado = objeto_espacial.vida
    @choques_posibles[objeto_espacial.class].afectar_objeto(self, objeto_espacial, vida_objeto_chocado)
    objeto_espacial.actualizar_por_choque(este_objeto_espacial_antes_de_chocar)
  end

  def actualizar_por_choque(objeto_espacial)
    @choques_posibles[objeto_espacial.class].afectar_objeto(self, objeto_espacial, 0)
  end

end