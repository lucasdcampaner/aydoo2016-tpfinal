class EfectoAumentarVida

  def afectar_objeto(objeto_espacial_que_choca, objeto_espacial_chocado)
    objeto_espacial_que_choca.vida += objeto_espacial_chocado.vida
  end

end