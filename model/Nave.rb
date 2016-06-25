require_relative '../model/ObjetoEspacial'
require_relative '../model/EfectoDisminuirMasa'
require_relative '../model/EfectoDisminuirVida'
require_relative '../model/EfectoAumentarVida'

class Nave < ObjetoEspacial
 
  attr_accessor :vida, :masa

  @vida
  @masa
  @choques_posibles

  def initialize(vida, masa)     
    
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new
    @choques_posibles[Nave] = EfectoDisminuirVida.new(100)
    @choques_posibles[Misil] = EfectoDisminuirVida.new(80)
    @choques_posibles[Bomba] = EfectoDisminuirVida.new(50)
    @choques_posibles[Asteroide] = EfectoDisminuirMasa.new(50)
    @choques_posibles[Estrella] = EfectoAumentarVida.new()
  end
end