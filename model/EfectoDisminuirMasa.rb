class EfectoDisminuirMasa

  def initialize(porcentajeDisminucion)

    @porcentajeDisminucion = porcentajeDisminucion
  end

  def afectar_objeto(objetoEspacialQueChoca, objetoEspacialChocado)

    unidadesMasa = (objetoEspacialChocado.masa * @porcentajeDisminucion / 100)
    objetoEspacialQueChoca.masa -= unidadesMasa
  end

end