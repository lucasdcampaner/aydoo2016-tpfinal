class ObjetoEspacial

  attr_accessor :vida, :masa, :choques_posibles

  @vida
  @masa
  @choques_posibles

  def initialize()     
    
    vida = 100
    masa = 100
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new
  end

  def chocar(objeto_espacial)

    este_objeto_espacial_antes_de_chocar = (self.class).new(self.vida, self.masa)
    @choques_posibles[objeto_espacial.class].afectar_objeto(self, objeto_espacial)
    objeto_espacial.actualizar_por_choque(este_objeto_espacial_antes_de_chocar)
  end

  def actualizar_por_choque(objeto_espacial)
    @choques_posibles[objeto_espacial.class].afectar_objeto(self, objeto_espacial)
  end

  def agregar_choque_posible(objeto_espacial, efecto)
    if !@choques_posibles.include? objeto_espacial
      @choques_posibles[objeto_espacial] = efecto
    end
  end

end