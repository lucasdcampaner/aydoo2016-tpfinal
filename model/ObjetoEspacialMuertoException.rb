class ObjetoEspacialMuertoException < Exception
  
  def initialize(msg='Los objetos espaciales muertos no pueden participar en choques.')
    super
  end
end