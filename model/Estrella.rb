require_relative '../model/ObjetoEspacial'
require_relative '../model/EfectoDisminuirVidaPorPorcentaje'
require_relative '../model/EfectoNulo'
require_relative '../model/EfectoDestruccionTotal'

class Estrella < ObjetoEspacial

  def initialize(vida, masa)     
    
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new
    @choques_posibles[Nave] = EfectoDisminuirVidaPorPorcentaje.new(100)
    @choques_posibles[Misil] = EfectoNulo.new()
    @choques_posibles[Bomba] = EfectoDisminuirVidaPorPorcentaje.new(100)
    @choques_posibles[Asteroide] = EfectoDisminuirVidaPorPorcentaje.new(100)
    @choques_posibles[Estrella] = EfectoDisminuirVidaPorPorcentaje.new(100)
  end
end