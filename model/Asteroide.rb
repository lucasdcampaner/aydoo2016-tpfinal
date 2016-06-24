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

  def chocar(objetoEspacial)

    @choques_posibles[objetoEspacial.class].afectar_objeto(self, objetoEspacial)
    notificarChoque(objetoEspacial)
  end

  def notificarChoque(objetoEspacial)
    #Utilizar el observador.
  end

end