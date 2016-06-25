require_relative '../model/EfectoDisminuirVida'
require_relative '../model/EfectoDisminuirVidaPorPorcentaje'

class Bomba

  attr_accessor :vida, :masa

  @vida
  @masa
  @choques_posibles

  def initialize(vida, masa)     
    
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new
    @choques_posibles[Nave] = EfectoDisminuirVida.new(100)
    @choques_posibles[Misil] = EfectoDisminuirVidaPorPorcentaje.new(50)
    @choques_posibles[Bomba] = EfectoDisminuirVida.new(100)
    @choques_posibles[Asteroide] = EfectoDisminuirVidaPorPorcentaje.new(100)
  end

  def chocar(objeto_espacial)

    este_objeto_espacial_antes_de_chocar = (self.class).new(self.vida, self.masa)
    @choques_posibles[objeto_espacial.class].afectar_objeto(self, objeto_espacial)
    objeto_espacial.actualizar_por_choque(este_objeto_espacial_antes_de_chocar)
  end

  def actualizar_por_choque(objeto_espacial)
    @choques_posibles[objeto_espacial.class].afectar_objeto(self, objeto_espacial)
  end

end