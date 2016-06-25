require 'rspec' 
require 'spec_helper'
require_relative '../model/Asteroide'

describe 'Asteroide' do

  it 'Deberia crear un asteroide con 50 unidades de vida y 100 unidades de masa' do
    
    vida_esperada = 50
    masa_esperada = 100
    asteroide = Asteroide.new(vida_esperada, masa_esperada) 
    
    vida_obtenida = asteroide.vida
    masa_obtenida = asteroide.masa    

    expect(vida_obtenida).to eq vida_esperada
    expect(masa_obtenida).to eq masa_esperada
  end

  it 'No deberia agregar el choque posible nave en los choques posibles' do
    
    vida = 100
    masa = 100
	cantidad_choques_esperados = 3
    asteroide = Asteroide.new(vida, masa) 
   
    asteroide.agregar_choque_posible(Nave, EfectoAumentarMasa.new(10))

    cantidad_choques_obtenidos = asteroide.choques_posibles.length
    expect(cantidad_choques_obtenidos).to eq cantidad_choques_esperados
  end

  it 'Deberia agregar el choque posible estrella en los choques posibles' do
    
    vida = 100
    masa = 100
	cantidad_choques_esperados = 4
    asteroide = Asteroide.new(vida, masa) 
   
    asteroide.agregar_choque_posible(Estrella, EfectoNulo.new())

    cantidad_choques_obtenidos = asteroide.choques_posibles.length
    expect(cantidad_choques_obtenidos).to eq cantidad_choques_esperados
  end
end