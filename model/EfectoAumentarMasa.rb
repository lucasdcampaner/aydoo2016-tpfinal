class EfectoAumentarMasa

  def initialize(porcentajeAumento)

    @porcentajeAumento = porcentajeAumento
  end

  def afectar_objeto(objetoEspacialQueChoca, objetoEspacialChocado)
    unidadesMasa = (objetoEspacialChocado.masa * @porcentajeAumento / 100)
    objetoEspacialQueChoca.masa += unidadesMasa
  end

end