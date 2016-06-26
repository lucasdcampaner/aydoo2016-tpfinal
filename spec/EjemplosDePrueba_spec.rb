require 'rspec' 
require 'spec_helper'

describe 'Ejemplos de prueba de consigna' do

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

  it 'Deberia la bomba que choca disminuir su vida en 100 unidades y la bomba chocada quedar en 0 cuando chocan entre si' do
    
    vida_bomba_que_choca = 200
    masa_bomba_que_choca = 90
    bomba_que_choca = Bomba.new(vida_bomba_que_choca, masa_bomba_que_choca) 
    vida_bomba_chocada = 20
    masa_bomba_chocada = 45
    bomba_chocada = Bomba.new(vida_bomba_chocada, masa_bomba_chocada) 
    vida_bomba_que_choca_esperada = 100
    masa_bomba_que_choca_esperada = 90
    vida_bomba_chocada_esperada = 0
    masa_bomba_chocada_esperada = 45

    bomba_que_choca.chocar(bomba_chocada)
    
    vida_bomba_que_choca_obtenida = bomba_que_choca.vida
    masa_bomba_que_choca_obtenida = bomba_que_choca.masa    
    vida_bomba_chocada_obtenida = bomba_chocada.vida
    masa_bomba_chocada_obtenida = bomba_chocada.masa     

    expect(vida_bomba_que_choca_obtenida).to eq vida_bomba_que_choca_esperada
    expect(masa_bomba_que_choca_obtenida).to eq masa_bomba_que_choca_esperada
    expect(vida_bomba_chocada_obtenida).to eq vida_bomba_chocada_esperada
    expect(masa_bomba_chocada_obtenida).to eq masa_bomba_chocada_esperada    
  end

  it 'Deberia la bomba disminuir su vida a 0 unidades y el asteroide no registrar efectos cuando bomba choca con asteroide' do
    
    vida_bomba = 200
    masa_bomba = 100
    bomba = Bomba.new(vida_bomba, masa_bomba) 
    vida_asteroide = 30
    masa_asteroide = 100
    asteroide = Asteroide.new(vida_asteroide, masa_asteroide) 
    vida_bomba_esperada = 0
    masa_bomba_esperada = 100
    vida_asteroide_esperada = 30
    masa_asteroide_esperada = 100

    bomba.chocar(asteroide)
    
    vida_bomba_obtenida = bomba.vida
    masa_bomba_obtenida = bomba.masa    
    vida_asteroide_obtenida = asteroide.vida
    masa_asteroide_obtenida = asteroide.masa    

    expect(vida_bomba_obtenida).to eq vida_bomba_esperada
    expect(masa_bomba_obtenida).to eq masa_bomba_esperada
    expect(vida_asteroide_obtenida).to eq vida_asteroide_esperada
    expect(masa_asteroide_obtenida).to eq masa_asteroide_esperada    
  end

  it 'Deberia la nave aumentar su masa a 150 unidades y la estrella disminuir su vida a 0 cuando nave choca con estrella' do
    
    vida_nave = 100
    masa_nave = 100
    nave = Nave.new(vida_nave, masa_nave) 
    vida_estrella = 50
    masa_estrella = 50
    estrella = Estrella.new(vida_estrella, masa_estrella) 
    vida_nave_esperada = 150
    masa_nave_esperada = 100
    vida_estrella_esperada = 0
    masa_estrella_esperada = 50

    nave.chocar(estrella)
    
    vida_nave_obtenida = nave.vida
    masa_nave_obtenida = nave.masa    
    vida_estrella_obtenida = estrella.vida
    masa_estrella_obtenida = estrella.masa    

    expect(vida_nave_obtenida).to eq vida_nave_esperada
    expect(masa_nave_obtenida).to eq masa_nave_esperada
    expect(vida_estrella_obtenida).to eq vida_estrella_esperada
    expect(masa_estrella_obtenida).to eq masa_estrella_esperada    
  end
  
  it 'Deberia la bomba disminuir su vida a 0 unidades y el asteroide no registrar efectos cuando bomba choca con asteroide' do
    
    vida_bomba = 200
    masa_bomba = 100
    bomba = Bomba.new(vida_bomba, masa_bomba) 
    vida_asteroide = 30
    masa_asteroide = 100
    asteroide = Asteroide.new(vida_asteroide, masa_asteroide) 
    vida_bomba_esperada = 0
    masa_bomba_esperada = 100
    vida_asteroide_esperada = 30
    masa_asteroide_esperada = 100

    bomba.chocar(asteroide)
    
    vida_bomba_obtenida = bomba.vida
    masa_bomba_obtenida = bomba.masa    
    vida_asteroide_obtenida = asteroide.vida
    masa_asteroide_obtenida = asteroide.masa    

    expect(vida_bomba_obtenida).to eq vida_bomba_esperada
    expect(masa_bomba_obtenida).to eq masa_bomba_esperada
    expect(vida_asteroide_obtenida).to eq vida_asteroide_esperada
    expect(masa_asteroide_obtenida).to eq masa_asteroide_esperada    
  end
end