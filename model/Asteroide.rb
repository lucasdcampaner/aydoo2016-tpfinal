require_relative '../model/EfectoAumentarMasa'

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
  end

  def chocar(objeto_espacial)
    
	objetoEspacialAntesDeChocar = self
    @choques_posibles[objeto_espacial.class].afectar_objeto(self, objeto_espacial)
    objeto_espacial.actualizar_por_choque(objetoEspacialAntesDeChocar)
  end

  def actualizar_por_choque(objeto_espacial)
    @choques_posibles[objeto_espacial.class].afectar_objeto(self, objeto_espacial)
  end

end