require_relative '../model/ObjetoEspacial'
require_relative '../model/EfectoDisminuirVida'
require_relative '../model/EfectoAumentarMasa'

class AgujeroNegro < ObjetoEspacial

  def initialize(vida, masa)     
    
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new 
    @choques_posibles[Nave] = EfectoDisminuirVida.new(150)
    @choques_posibles[Estrella] = EfectoAumentarMasa.new(100)
  end
end