require_relative '../model/ObjetoEspacial'
require_relative '../model/EfectoDisminuirVida'
require_relative '../model/EfectoDisminuirVidaPorPorcentaje'

class Bomba < ObjetoEspacial

  def initialize(vida, masa)     
    
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new
    @choques_posibles[Nave] = EfectoDisminuirVida.new(100)
    @choques_posibles[Misil] = EfectoDisminuirVidaPorPorcentaje.new(50)
    @choques_posibles[Bomba] = EfectoDisminuirVida.new(100)
    @choques_posibles[Asteroide] = EfectoDisminuirVidaPorPorcentaje.new(100)
    @choques_posibles[Estrella] = EfectoDisminuirVida.new(100)
  end
end