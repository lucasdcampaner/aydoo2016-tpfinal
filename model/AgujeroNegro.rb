require_relative '../model/ObjetoEspacial'
require_relative '../model/EfectoDisminuirVida'

class AgujeroNegro < ObjetoEspacial

  def initialize(vida, masa)     
    
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new 
    @choques_posibles[Nave] = EfectoDisminuirVida.new(150)
  end
end