require_relative '../model/EfectoDisminuirMasa'

class Nave

  attr_accessor :vida, :masa

  @vida
  @masa
  @choques_posibles

  def initialize(vida, masa)     
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new
    @choques_posibles[Asteroide] = EfectoDisminuirMasa.new(50)
  end

  def chocar(objeto_espacial)

    nave_antes_de_chocar = Nave.new(self.vida, self.masa)
    @choques_posibles[objeto_espacial.class].afectar_objeto(self, objeto_espacial)
    objeto_espacial.actualizar_por_choque(nave_antes_de_chocar)
  end

  def actualizar_por_choque(objeto_espacial)
    @choques_posibles[objeto_espacial.class].afectar_objeto(self, objeto_espacial)
  end

end