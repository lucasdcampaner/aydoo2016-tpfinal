require_relative '../model/Efecto'

class EfectoAumentarMasa < Efecto

  def initialize(porcentaje_aumento)
    @porcentaje_aumento = porcentaje_aumento
  end

  def afectar_objeto(objeto_espacial_que_choca, objeto_espacial_chocado)
    
    unidades_masa = (objeto_espacial_chocado.masa * @porcentaje_aumento / 100)
    objeto_espacial_que_choca.masa += unidades_masa
  end
end