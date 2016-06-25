require 'rspec' 
require 'spec_helper'
require_relative '../model/ObjetoEspacial'

describe 'ObjetoEspacial' do

  it 'Deberia crear un objeto espacial con 100 unidades de vida y 100 unidades de masa' do
    
    vida_esperada = 100
    masa_esperada = 100
    
    objeto_espacial = ObjetoEspacial.new() 
    
    vida_obtenida = objeto_espacial.vida
    masa_obtenida = objeto_espacial.masa    
    
    expect(vida_obtenida).to eq vida_esperada
    expect(masa_obtenida).to eq masa_esperada
  end

  it 'No deberia agregar el choque posible nave en los choques posibles' do
    
    cantidad_choques_esperados = 1
    objeto_espacial = ObjetoEspacial.new() 
    objeto_espacial.agregar_choque_posible(Nave, EfectoAumentarMasa.new(10))

    objeto_espacial.agregar_choque_posible(Nave, EfectoAumentarMasa.new(10))    

    cantidad_choques_obtenidos = objeto_espacial.choques_posibles.length
    expect(cantidad_choques_obtenidos).to eq cantidad_choques_esperados
  end
  
  it 'Deberia agregar el choque posible estrella en los choques posibles' do
    
    cantidad_choques_esperados = 2
    objeto_espacial = ObjetoEspacial.new() 
    objeto_espacial.agregar_choque_posible(Nave, EfectoAumentarMasa.new(10))
    
    objeto_espacial.agregar_choque_posible(Estrella, EfectoNulo.new())

    cantidad_choques_obtenidos = objeto_espacial.choques_posibles.length
    expect(cantidad_choques_obtenidos).to eq cantidad_choques_esperados
  end

  it 'Deberia eliminar el choque posible nave en los choques posibles' do
    
    cantidad_choques_esperados = 1
    objeto_espacial = ObjetoEspacial.new() 
    objeto_espacial.agregar_choque_posible(Nave, EfectoAumentarMasa.new(10))
    objeto_espacial.agregar_choque_posible(Estrella, EfectoNulo.new())
   
    objeto_espacial.eliminar_choque_posible(Nave)

    cantidad_choques_obtenidos = objeto_espacial.choques_posibles.length
    expect(cantidad_choques_obtenidos).to eq cantidad_choques_esperados
  end
  
  it 'Deberia estar muerto el objeto cuando vida = 0' do
    
    objeto_espacial = ObjetoEspacial.new()    
    objeto_espacial.vida = 0

    esta_vivo = objeto_espacial.esta_vivo?

    expect(esta_vivo).to eq false
  end
  
  it 'Deberia estar muerto el objeto cuando masa = 0' do
    
    objeto_espacial = ObjetoEspacial.new()    
    objeto_espacial.masa = 0

    esta_vivo = objeto_espacial.esta_vivo?

    expect(esta_vivo).to eq false
  end

  it 'Deberia estar muerto el objeto cuando vida = 0 y masa = 0' do
    
    objeto_espacial = ObjetoEspacial.new()    
    objeto_espacial.vida = 0
    objeto_espacial.masa = 0

    esta_vivo = objeto_espacial.esta_vivo?

    expect(esta_vivo).to eq false
  end
  
  it 'Deberia estar vivo el objeto cuando vida y masa son mayores a 0' do
    
    objeto_espacial = ObjetoEspacial.new()    
    objeto_espacial.vida = 100
    objeto_espacial.masa = 100

    esta_vivo = objeto_espacial.esta_vivo?

    expect(esta_vivo).to eq true
  end
end
