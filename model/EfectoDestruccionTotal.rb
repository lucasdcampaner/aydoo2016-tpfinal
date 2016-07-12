require_relative '../model/Efecto'

class EfectoDestruccionTotal < Efecto

  def afectar_objeto(objeto_espacial_que_choca, objeto_espacial_chocado)
    objeto_espacial_que_choca.vida = 0
    objeto_espacial_que_choca.masa = 0
  end
end