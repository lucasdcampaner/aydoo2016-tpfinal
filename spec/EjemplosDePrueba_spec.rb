require 'rspec' 
require 'spec_helper'

describe 'Ejemplos de prueba' do

  it 'Deberia la nave disminuir su masa a 50 unidades y el asteroide aumentarla en 10 cuando nave choca con asteroide' do
    
    vida_nave = 100
    masa_nave = 100
    nave = Nave.new(vida_nave, masa_nave) 
    vida_asteroide = 50
    masa_asteroide = 100
    asteroide = Asteroide.new(vida_asteroide, masa_asteroide) 
    vida_nave_esperada = 100
    masa_nave_esperada = 50
    vida_asteroide_esperada = 50
    masa_asteroide_esperada = 110

    nave.chocar(asteroide)
    
    vida_nave_obtenida = nave.vida
    masa_nave_obtenida = nave.masa    
    vida_asteroide_obtenida = asteroide.vida
    masa_asteroide_obtenida = asteroide.masa    

    expect(vida_nave_obtenida).to eq vida_nave_esperada
    expect(masa_nave_obtenida).to eq masa_nave_esperada
    expect(vida_asteroide_obtenida).to eq vida_asteroide_esperada
    expect(masa_asteroide_obtenida).to eq masa_asteroide_esperada    
  end

  it 'Deberia la estrella no sufrir efectos y el misil tampoco cuando estrella choca con misil' do
    
    vida_misil = 10
    masa_misil = 30
    misil = Misil.new(vida_misil, masa_misil) 
    vida_estrella = 50
    masa_estrella = 10
    estrella = Estrella.new(vida_estrella, masa_estrella) 
    vida_misil_esperada = 10
    masa_misil_esperada = 30
    vida_estrella_esperada = 50
    masa_estrella_esperada = 10

    estrella.chocar(misil)
    
    vida_misil_obtenida = misil.vida
    masa_misil_obtenida = misil.masa    
    vida_estrella_obtenida = estrella.vida
    masa_estrella_obtenida = estrella.masa    

    expect(vida_misil_obtenida).to eq vida_misil_esperada
    expect(masa_misil_obtenida).to eq masa_misil_esperada
    expect(vida_estrella_obtenida).to eq vida_estrella_esperada
    expect(masa_estrella_obtenida).to eq masa_estrella_esperada    
  end
end