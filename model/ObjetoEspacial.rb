require_relative '../model/ObjetoEspacialMuertoException'
require_relative '../model/ObjetoEspacialSinEfectoDefinidoException'

class ObjetoEspacial

  attr_accessor :vida, :masa, :choques_posibles

  @vida
  @masa
  @esta_vivo
  @choques_posibles

  def initialize()     
    
    vida = 100
    masa = 100
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new
  end

  def chocar(objeto_espacial)

    if !self.esta_vivo? || !objeto_espacial.esta_vivo?
      fail ObjetoEspacialMuertoException.new
    end
    
    if !self.esta_definido_el_choque?(objeto_espacial)
      fail ObjetoEspacialSinEfectoDefinidoException.new
    end
    
    este_objeto_espacial_antes_de_chocar = (self.class).new(self.vida, self.masa)  
    @choques_posibles[objeto_espacial.class].afectar_objeto(self, objeto_espacial)
    objeto_espacial.actualizar_por_choque(este_objeto_espacial_antes_de_chocar) 
  end

  def actualizar_por_choque(objeto_espacial)
    
    if !self.esta_definido_el_choque?(objeto_espacial)
      fail ObjetoEspacialSinEfectoDefinidoException.new
    end
    @choques_posibles[objeto_espacial.class].afectar_objeto(self, objeto_espacial)
  end

  def agregar_choque_posible(objeto_espacial, efecto)
    if !@choques_posibles.include? objeto_espacial
      @choques_posibles[objeto_espacial] = efecto
    end
  end

  def eliminar_choque_posible(objeto_espacial)
    if @choques_posibles.include? objeto_espacial
      @choques_posibles.delete(objeto_espacial)
    end
  end

  def esta_vivo?
    
    if @vida != 0 && @masa != 0
      @esta_vivo = true
    else
      @esta_vivo = false
    end
  end

  def esta_definido_el_choque?(objeto_espacial)
    
    esta_definido = true

    if @choques_posibles[objeto_espacial.class] == nil
      esta_definido = false
    end
    esta_definido
  end
end