require_relative '../model/ObjetoEspacial'
require_relative '../model/EfectoDisminuirVidaPorPorcentaje'
require_relative '../model/EfectoNulo'

class Estrella < ObjetoEspacial

  attr_accessor :vida, :masa

  def initialize(vida, masa)     
    
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new
    @choques_posibles[Nave] = EfectoDisminuirVidaPorPorcentaje.new(100)
    @choques_posibles[Misil] = EfectoNulo.new()
  end
end