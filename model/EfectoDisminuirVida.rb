class EfectoDisminuirVida

  def initialize(unidades_a_disminuir)
    @unidades_a_disminuir = unidades_a_disminuir
  end

  def afectar_objeto(objeto_espacial_que_choca, objeto_espacial_chocado, unidades_para_operar)
    objeto_espacial_que_choca.vida -= @unidades_a_disminuir
  end

end