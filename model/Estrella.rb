require_relative '../model/EfectoDisminuirVida'

class Estrella

  attr_accessor :vida, :masa

  def initialize(vida, masa)     
    
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new
    @choques_posibles[Nave] = EfectoDisminuirVida.new(50)
  end

  def chocar(objeto_espacial)

    este_objeto_espacial_antes_de_chocar = (self.class).new(self.vida, self.masa)
    vida_objeto_chocado = objeto_espacial.vida
    @choques_posibles[objeto_espacial.class].afectar_objeto(self, objeto_espacial, vida_objeto_chocado)
    objeto_espacial.actualizar_por_choque(este_objeto_espacial_antes_de_chocar)
  end

  def actualizar_por_choque(objeto_espacial)
    @choques_posibles[objeto_espacial.class].afectar_objeto(self, objeto_espacial, 0)
  end

end