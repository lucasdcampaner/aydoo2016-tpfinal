class EfectoAumentarMasa

  def initialize(porcentaje_aumento)
    @porcentaje_aumento = porcentaje_aumento
  end

  def afectar_objeto(objeto_espacial_que_choca, objeto_espacial_chocado)
    
    unidadesMasa = (objeto_espacial_chocado.masa * @porcentaje_aumento / 100)
    objeto_espacial_que_choca.masa += unidadesMasa
  end

end