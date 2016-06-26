require 'rspec' 
require 'spec_helper'
require_relative '../model/ObjetoEspacial'
require_relative '../model/Nave'
require_relative '../model/Misil'

describe 'Excepciones' do

  it 'Deberia lanzar excepcion cuando el objeto que choca esta muerto' do
    
    objeto_espacial_que_choca = ObjetoEspacial.new() 
    objeto_espacial_chocadodo = ObjetoEspacial.new() 
    vida = 0
    objeto_espacial_que_choca.vida = vida

    expect{objeto_espacial_que_choca.chocar(objeto_espacial_chocadodo)}.to raise_exception(ObjetoEspacialMuertoException)
  end

  it 'Deberia lanzar excepcion cuando el objeto que es chocado esta muerto' do
    
    objeto_espacial_que_choca = ObjetoEspacial.new() 
    objeto_espacial_chocadodo = ObjetoEspacial.new() 
    vida = 0
    objeto_espacial_chocadodo.vida = vida

    expect{objeto_espacial_que_choca.chocar(objeto_espacial_chocadodo)}.to raise_exception(ObjetoEspacialMuertoException)
  end

  it 'Deberia lanzar excepcion cuando ambos objetos estan muertos' do
    
    objeto_espacial_que_choca = ObjetoEspacial.new() 
    objeto_espacial_chocadodo = ObjetoEspacial.new() 
    vida = 0
    objeto_espacial_que_choca.vida = vida    
    objeto_espacial_chocadodo.vida = vida

    expect{objeto_espacial_que_choca.chocar(objeto_espacial_chocadodo)}.to raise_exception(ObjetoEspacialMuertoException)
  end
end