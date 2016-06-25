class EfectoDisminuirMasa

  def initialize(porcentaje_disminucion)

    @porcentaje_disminucion = porcentaje_disminucion
  end

  def afectar_objeto(objeto_espacial_que_choca, objeto_espacial_chocado)

    unidadesMasa = (objeto_espacial_chocado.masa * @porcentaje_disminucion / 100)
    objeto_espacial_que_choca.masa -= unidadesMasa
  end

end