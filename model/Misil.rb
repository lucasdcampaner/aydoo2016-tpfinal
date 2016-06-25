require_relative '../model/ObjetoEspacial'
require_relative '../model/EfectoDisminuirVida'
require_relative '../model/EfectoDisminuirVidaPorPorcentaje'
require_relative '../model/EfectoNulo'

class Misil < ObjetoEspacial

  attr_accessor :vida, :masa

  @vida
  @masa
  @choques_posibles

  def initialize(vida, masa)     
    
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new
    @choques_posibles[Nave] = EfectoDisminuirVida.new(100)
    @choques_posibles[Misil] = EfectoDisminuirVida.new(100)
    @choques_posibles[Bomba] = EfectoNulo.new()
    @choques_posibles[Asteroide] = EfectoNulo.new()
    @choques_posibles[Estrella] = EfectoNulo.new()
  end
end