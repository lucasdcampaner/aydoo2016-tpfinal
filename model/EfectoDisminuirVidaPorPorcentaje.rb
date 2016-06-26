class EfectoDisminuirVidaPorPorcentaje

  def initialize(porcentaje_disminucion)

    @porcentaje_disminucion = porcentaje_disminucion
  end

  def afectar_objeto(objeto_espacial_que_choca, objeto_espacial_chocado)

    unidades_vida = (objeto_espacial_que_choca.vida * @porcentaje_disminucion / 100)
    objeto_espacial_que_choca.vida -= unidades_vida      
  end
end