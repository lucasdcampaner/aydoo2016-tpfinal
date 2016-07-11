require 'rspec' 
require 'spec_helper'

describe 'Distintos tipos de choque' do

  it 'Deberia la dos naves disminuir su vida en 100 unidades cuando chocan entre si' do
    
    vida_nave = 100
    masa_nave = 100
    nave_que_choca = Nave.new(vida_nave, masa_nave) 
    nave_chocada = Nave.new(vida_nave, masa_nave) 
    vida_nave_que_choca_esperada = 0
    masa_nave_que_choca_esperada = 100
    vida_nave_chocada_esperada = 0
    masa_nave_chocada_esperada = 100

    nave_que_choca.chocar(nave_chocada)
    
    vida_nave_que_choca_obtenida = nave_que_choca.vida
    masa_nave_que_choca_obtenida = nave_que_choca.masa    
    vida_nave_chocada_obtenida = nave_chocada.vida
    masa_nave_chocada_obtenida = nave_chocada.masa     

    expect(vida_nave_que_choca_obtenida).to eq vida_nave_que_choca_esperada
    expect(masa_nave_que_choca_obtenida).to eq masa_nave_que_choca_esperada
    expect(vida_nave_chocada_obtenida).to eq vida_nave_chocada_esperada
    expect(masa_nave_chocada_obtenida).to eq masa_nave_chocada_esperada    
  end

  it 'Deberia la nave disminuir su vida a 20 unidades y el misil a 0 cuando nave choca con misil' do
    
    vida_nave = 100
    masa_nave = 100
    nave = Nave.new(vida_nave, masa_nave) 
    vida_misil = 100
    masa_misil = 100
    misil = Misil.new(vida_misil, masa_misil) 
    vida_nave_esperada = 20
    masa_nave_esperada = 100
    vida_misil_esperada = 0
    masa_misil_esperada = 100

    nave.chocar(misil)
    
    vida_nave_obtenida = nave.vida
    masa_nave_obtenida = nave.masa    
    vida_misil_obtenida = misil.vida
    masa_misil_obtenida = misil.masa    

    expect(vida_nave_obtenida).to eq vida_nave_esperada
    expect(masa_nave_obtenida).to eq masa_nave_esperada
    expect(vida_misil_obtenida).to eq vida_misil_esperada
    expect(masa_misil_obtenida).to eq masa_misil_esperada    
  end
  
  it 'Deberia la nave disminuir su vida a 20 unidades y el misil a 0 cuando misil choca con nave' do
    
    vida_nave = 100
    masa_nave = 100
    nave = Nave.new(vida_nave, masa_nave) 
    vida_misil = 100
    masa_misil = 100
    misil = Misil.new(vida_misil, masa_misil) 
    vida_nave_esperada = 20
    masa_nave_esperada = 100
    vida_misil_esperada = 0
    masa_misil_esperada = 100

    misil.chocar(nave)
    
    vida_nave_obtenida = nave.vida
    masa_nave_obtenida = nave.masa    
    vida_misil_obtenida = misil.vida
    masa_misil_obtenida = misil.masa    

    expect(vida_nave_obtenida).to eq vida_nave_esperada
    expect(masa_nave_obtenida).to eq masa_nave_esperada
    expect(vida_misil_obtenida).to eq vida_misil_esperada
    expect(masa_misil_obtenida).to eq masa_misil_esperada    
  end

  it 'Deberia la nave diminuir su vida a 50 unidades y la bomba a 0 cuando nave choca con bomba' do
    
    vida_nave = 100
    masa_nave = 100
    nave = Nave.new(vida_nave, masa_nave) 
    vida_bomba = 100
    masa_bomba = 100
    bomba = Bomba.new(vida_bomba, masa_bomba) 
    vida_nave_esperada = 50
    masa_nave_esperada = 100
    vida_bomba_esperada = 0
    masa_bomba_esperada = 100

    nave.chocar(bomba)
    
    vida_nave_obtenida = nave.vida
    masa_nave_obtenida = nave.masa    
    vida_bomba_obtenida = bomba.vida
    masa_bomba_obtenida = bomba.masa    

    expect(vida_nave_obtenida).to eq vida_nave_esperada
    expect(masa_nave_obtenida).to eq masa_nave_esperada
    expect(vida_bomba_obtenida).to eq vida_bomba_esperada
    expect(masa_bomba_obtenida).to eq masa_bomba_esperada    
  end
  
  it 'Deberia la nave diminuir su vida a 50 unidades y la bomba a 0 cuando bomba choca con nave' do
    
    vida_nave = 100
    masa_nave = 100
    nave = Nave.new(vida_nave, masa_nave) 
    vida_bomba = 100
    masa_bomba = 100
    bomba = Bomba.new(vida_bomba, masa_bomba) 
    vida_nave_esperada = 50
    masa_nave_esperada = 100
    vida_bomba_esperada = 0
    masa_bomba_esperada = 100

    bomba.chocar(nave)
    
    vida_nave_obtenida = nave.vida
    masa_nave_obtenida = nave.masa    
    vida_bomba_obtenida = bomba.vida
    masa_bomba_obtenida = bomba.masa    

    expect(vida_nave_obtenida).to eq vida_nave_esperada
    expect(masa_nave_obtenida).to eq masa_nave_esperada
    expect(vida_bomba_obtenida).to eq vida_bomba_esperada
    expect(masa_bomba_obtenida).to eq masa_bomba_esperada    
  end

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

  it 'Deberia la nave diminuir su masa a 50 unidades y el asteroide la aumenta en 10 cuando asteroide choca con nave' do
    
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

    asteroide.chocar(nave)
    
    vida_nave_obtenida = nave.vida
    masa_nave_obtenida = nave.masa    
    vida_asteroide_obtenida = asteroide.vida
    masa_asteroide_obtenida = asteroide.masa    

    expect(vida_nave_obtenida).to eq vida_nave_esperada
    expect(masa_nave_obtenida).to eq masa_nave_esperada
    expect(vida_asteroide_obtenida).to eq vida_asteroide_esperada
    expect(masa_asteroide_obtenida).to eq masa_asteroide_esperada    
  end

  it 'Deberia la nave aumentar su masa a 150 unidades y la estrella disminuir su vida a 0 cuando nave choca con estrella' do
    
    vida_nave = 100
    masa_nave = 100
    nave = Nave.new(vida_nave, masa_nave) 
    vida_estrella = 50
    masa_estrella = 100
    estrella = Estrella.new(vida_estrella, masa_estrella) 
    vida_nave_esperada = 150
    masa_nave_esperada = 100
    vida_estrella_esperada = 0
    masa_estrella_esperada = 100

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

  it 'Deberia la nave aumentar su masa a 150 unidades y la estrella diminuirla a 0 cuando estrella choca con nave' do
    
    vida_nave = 100
    masa_nave = 100
    nave = Nave.new(vida_nave, masa_nave) 
    vida_estrella = 50
    masa_estrella = 100
    estrella = Estrella.new(vida_estrella, masa_estrella) 
    vida_nave_esperada = 150
    masa_nave_esperada = 100
    vida_estrella_esperada = 0
    masa_estrella_esperada = 100

    estrella.chocar(nave)
    
    vida_nave_obtenida = nave.vida
    masa_nave_obtenida = nave.masa    
    vida_estrella_obtenida = estrella.vida
    masa_estrella_obtenida = estrella.masa    

    expect(vida_nave_obtenida).to eq vida_nave_esperada
    expect(masa_nave_obtenida).to eq masa_nave_esperada
    expect(vida_estrella_obtenida).to eq vida_estrella_esperada
    expect(masa_estrella_obtenida).to eq masa_estrella_esperada    
  end

  it 'Deberia los dos misiles diminuir su vida en 100 unidades cuando chocan entre si' do
    
    vida_misil = 100
    masa_misil = 100
    misil_que_choca = Misil.new(vida_misil, masa_misil) 
    misil_chocado = Misil.new(vida_misil, masa_misil) 
    vida_misil_que_choca_esperada = 0
    masa_misil_que_choca_esperada = 100
    vida_misil_chocado_esperada = 0
    masa_misil_chocado_esperada = 100

    misil_que_choca.chocar(misil_chocado)
    
    vida_misil_que_choca_obtenida = misil_que_choca.vida
    masa_misil_que_choca_obtenida = misil_que_choca.masa    
    vida_misil_chocado_obtenida = misil_chocado.vida
    masa_misil_chocado_obtenida = misil_chocado.masa     

    expect(vida_misil_que_choca_obtenida).to eq vida_misil_que_choca_esperada
    expect(masa_misil_que_choca_obtenida).to eq masa_misil_que_choca_esperada
    expect(vida_misil_chocado_obtenida).to eq vida_misil_chocado_esperada
    expect(masa_misil_chocado_obtenida).to eq masa_misil_chocado_esperada    
  end

  it 'Deberia el misil no registrar efectos y la bomba la diminuir su vida a 50 unidades cuando misil choca con bomba' do
    
    vida_misil = 100
    masa_misil = 100
    misil = Misil.new(vida_misil, masa_misil) 
    vida_bomba = 100
    masa_bomba = 100
    bomba = Bomba.new(vida_bomba, masa_bomba) 
    vida_misil_esperada = 100
    masa_misil_esperada = 100
    vida_bomba_esperada = 50
    masa_bomba_esperada = 100

    misil.chocar(bomba)
    
    vida_misil_obtenida = misil.vida
    masa_misil_obtenida = misil.masa    
    vida_bomba_obtenida = bomba.vida
    masa_bomba_obtenida = bomba.masa    

    expect(vida_misil_obtenida).to eq vida_misil_esperada
    expect(masa_misil_obtenida).to eq masa_misil_esperada
    expect(vida_bomba_obtenida).to eq vida_bomba_esperada
    expect(masa_bomba_obtenida).to eq masa_bomba_esperada    
  end  

  it 'Deberia el misil no registrar efectos y la bomba la diminuir su vida a 50 unidades cuando bomba choca con misil' do
    
    vida_misil = 100
    masa_misil = 100
    misil = Misil.new(vida_misil, masa_misil) 
    vida_bomba = 100
    masa_bomba = 100
    bomba = Bomba.new(vida_bomba, masa_bomba) 
    vida_misil_esperada = 100
    masa_misil_esperada = 100
    vida_bomba_esperada = 50
    masa_bomba_esperada = 100

    bomba.chocar(misil)
    
    vida_misil_obtenida = misil.vida
    masa_misil_obtenida = misil.masa    
    vida_bomba_obtenida = bomba.vida
    masa_bomba_obtenida = bomba.masa    

    expect(vida_misil_obtenida).to eq vida_misil_esperada
    expect(masa_misil_obtenida).to eq masa_misil_esperada
    expect(vida_bomba_obtenida).to eq vida_bomba_esperada
    expect(masa_bomba_obtenida).to eq masa_bomba_esperada    
  end

  it 'Deberia el misil no registrar efectos y el asteroide tampoco cuando misil choca con asteroide' do
    
    vida_misil = 100
    masa_misil = 100
    misil = Misil.new(vida_misil, masa_misil) 
    vida_asteroide = 100
    masa_asteroide = 100
    asteroide = Asteroide.new(vida_asteroide, masa_asteroide) 
    vida_misil_esperada = 100
    masa_misil_esperada = 100
    vida_asteroide_esperada = 100
    masa_asteroide_esperada = 100

    misil.chocar(asteroide)
    
    vida_misil_obtenida = misil.vida
    masa_misil_obtenida = misil.masa    
    vida_asteroide_obtenida = asteroide.vida
    masa_asteroide_obtenida = asteroide.masa    

    expect(vida_misil_obtenida).to eq vida_misil_esperada
    expect(masa_misil_obtenida).to eq masa_misil_esperada
    expect(vida_asteroide_obtenida).to eq vida_asteroide_esperada
    expect(masa_asteroide_obtenida).to eq masa_asteroide_esperada    
  end

  it 'Deberia el misil no registrar efectos y el asteroide tampoco cuando asteroide choca con misil' do
    
    vida_misil = 100
    masa_misil = 100
    misil = Misil.new(vida_misil, masa_misil) 
    vida_asteroide = 100
    masa_asteroide = 100
    asteroide = Asteroide.new(vida_asteroide, masa_asteroide) 
    vida_misil_esperada = 100
    masa_misil_esperada = 100
    vida_asteroide_esperada = 100
    masa_asteroide_esperada = 100

    asteroide.chocar(misil)
    
    vida_misil_obtenida = misil.vida
    masa_misil_obtenida = misil.masa    
    vida_asteroide_obtenida = asteroide.vida
    masa_asteroide_obtenida = asteroide.masa    

    expect(vida_misil_obtenida).to eq vida_misil_esperada
    expect(masa_misil_obtenida).to eq masa_misil_esperada
    expect(vida_asteroide_obtenida).to eq vida_asteroide_esperada
    expect(masa_asteroide_obtenida).to eq masa_asteroide_esperada    
  end

  it 'Deberia el misil no registrar efectos y la estrella tampoco cuando misil choca con estrella' do
    
    vida_misil = 100
    masa_misil = 100
    misil = Misil.new(vida_misil, masa_misil) 
    vida_estrella = 100
    masa_estrella = 100
    estrella = Estrella.new(vida_estrella, masa_estrella) 
    vida_misil_esperada = 100
    masa_misil_esperada = 100
    vida_estrella_esperada = 100
    masa_estrella_esperada = 100

    misil.chocar(estrella)
    
    vida_misil_obtenida = misil.vida
    masa_misil_obtenida = misil.masa    
    vida_estrella_obtenida = estrella.vida
    masa_estrella_obtenida = estrella.masa    

    expect(vida_misil_obtenida).to eq vida_misil_esperada
    expect(masa_misil_obtenida).to eq masa_misil_esperada
    expect(vida_estrella_obtenida).to eq vida_estrella_esperada
    expect(masa_estrella_obtenida).to eq masa_estrella_esperada    
  end

  it 'Deberia la estrella no sufrir efectos y el misil tampoco cuando estrella choca con misil' do
    
    vida_misil = 100
    masa_misil = 100
    misil = Misil.new(vida_misil, masa_misil) 
    vida_estrella = 100
    masa_estrella = 100
    estrella = Estrella.new(vida_estrella, masa_estrella) 
    vida_misil_esperada = 100
    masa_misil_esperada = 100
    vida_estrella_esperada = 100
    masa_estrella_esperada = 100

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

  it 'Deberia las dos bombas disminuir su vida en 100 unidades cuando chocan entre si' do
    
    vida_bomba = 100
    masa_bomba = 100
    bomba_que_choca = Bomba.new(vida_bomba, masa_bomba) 
    bomba_chocada = Bomba.new(vida_bomba, masa_bomba) 
    vida_bomba_que_choca_esperada = 0
    masa_bomba_que_choca_esperada = 100
    vida_bomba_chocada_esperada = 0
    masa_bomba_chocada_esperada = 100

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
    
    vida_bomba = 100
    masa_bomba = 100
    bomba = Bomba.new(vida_bomba, masa_bomba) 
    vida_asteroide = 100
    masa_asteroide = 100
    asteroide = Asteroide.new(vida_asteroide, masa_asteroide) 
    vida_bomba_esperada = 0
    masa_bomba_esperada = 100
    vida_asteroide_esperada = 100
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

    it 'Deberia la bomba diminuir su vida a 0 unidades y el asteroide no registrar efectos cuando asteroide choca con bomba' do
    
    vida_bomba = 100
    masa_bomba = 100
    bomba = Bomba.new(vida_bomba, masa_bomba) 
    vida_asteroide = 100
    masa_asteroide = 100
    asteroide = Asteroide.new(vida_asteroide, masa_asteroide) 
    vida_bomba_esperada = 0
    masa_bomba_esperada = 100
    vida_asteroide_esperada = 100
    masa_asteroide_esperada = 100

    asteroide.chocar(bomba)
    
    vida_bomba_obtenida = bomba.vida
    masa_bomba_obtenida = bomba.masa    
    vida_asteroide_obtenida = asteroide.vida
    masa_asteroide_obtenida = asteroide.masa    

    expect(vida_bomba_obtenida).to eq vida_bomba_esperada
    expect(masa_bomba_obtenida).to eq masa_bomba_esperada
    expect(vida_asteroide_obtenida).to eq vida_asteroide_esperada
    expect(masa_asteroide_obtenida).to eq masa_asteroide_esperada    
  end

  it 'Deberia la bomba y la estrella disminuir su vida a 0 unidades cuando bomba choca con estrella' do
    
    vida_bomba = 100
    masa_bomba = 100
    bomba = Bomba.new(vida_bomba, masa_bomba) 
    vida_estrella = 100
    masa_estrella = 100
    estrella = Estrella.new(vida_estrella, masa_estrella) 
    vida_bomba_esperada = 0
    masa_bomba_esperada = 100
    vida_estrella_esperada = 0
    masa_estrella_esperada = 100

    bomba.chocar(estrella)
    
    vida_bomba_obtenida = bomba.vida
    masa_bomba_obtenida = bomba.masa    
    vida_estrella_obtenida = estrella.vida
    masa_estrella_obtenida = estrella.masa    

    expect(vida_bomba_obtenida).to eq vida_bomba_esperada
    expect(masa_bomba_obtenida).to eq masa_bomba_esperada
    expect(vida_estrella_obtenida).to eq vida_estrella_esperada
    expect(masa_estrella_obtenida).to eq masa_estrella_esperada    
  end
  
  it 'Deberia la bomba y la estrella disminuir su vida a 0 unidades cuando estrella choca con bomba' do
    
    vida_bomba = 100
    masa_bomba = 100
    bomba = Bomba.new(vida_bomba, masa_bomba) 
    vida_estrella = 100
    masa_estrella = 100
    estrella = Estrella.new(vida_estrella, masa_estrella) 
    vida_bomba_esperada = 0
    masa_bomba_esperada = 100
    vida_estrella_esperada = 0
    masa_estrella_esperada = 100

    estrella.chocar(bomba)
    
    vida_bomba_obtenida = bomba.vida
    masa_bomba_obtenida = bomba.masa    
    vida_estrella_obtenida = estrella.vida
    masa_estrella_obtenida = estrella.masa    

    expect(vida_bomba_obtenida).to eq vida_bomba_esperada
    expect(masa_bomba_obtenida).to eq masa_bomba_esperada
    expect(vida_estrella_obtenida).to eq vida_estrella_esperada
    expect(masa_estrella_obtenida).to eq masa_estrella_esperada    
  end

  it 'Deberia tener efecto nulo para ambos cuando asteroide choca con asteroide' do
    
    vida_asteroide = 100
    masa_asteroide = 100
    asteroide_que_choca = Asteroide.new(vida_asteroide, masa_asteroide) 
    asteroide_chocado = Asteroide.new(vida_asteroide, masa_asteroide) 
    vida_asteroide_que_choca_esperada = 100
    masa_asteroide_que_choca_esperada = 100
    vida_asteroide_chocado_esperada = 100
    masa_asteroide_chocado_esperada = 100

    asteroide_que_choca.chocar(asteroide_chocado)
    
    vida_asteroide_que_choca_obtenida = asteroide_que_choca.vida
    masa_asteroide_que_choca_obtenida = asteroide_que_choca.masa    
    vida_asteroide_chocado_obtenida = asteroide_chocado.vida
    masa_asteroide_chocado_obtenida = asteroide_chocado.masa     

    expect(vida_asteroide_que_choca_obtenida).to eq vida_asteroide_que_choca_esperada
    expect(masa_asteroide_que_choca_obtenida).to eq masa_asteroide_que_choca_esperada
    expect(vida_asteroide_chocado_obtenida).to eq vida_asteroide_chocado_esperada
    expect(masa_asteroide_chocado_obtenida).to eq masa_asteroide_chocado_esperada    
  end

  it 'Deberia el asteroide no registrar efectos y la estrella disminuir su vida a 0 cuando asteroide choca con estrella' do
    
    vida_asteroide = 100
    masa_asteroide = 100
    asteroide = Asteroide.new(vida_asteroide, masa_asteroide) 
    vida_estrella = 100
    masa_estrella = 100
    estrella = Estrella.new(vida_estrella, masa_estrella) 
    vida_asteroide_esperada = 100
    masa_asteroide_esperada = 100
    vida_estrella_esperada = 0
    masa_estrella_esperada = 100

    asteroide.chocar(estrella)
    
    vida_asteroide_obtenida = asteroide.vida
    masa_asteroide_obtenida = asteroide.masa    
    vida_estrella_obtenida = estrella.vida
    masa_estrella_obtenida = estrella.masa    

    expect(vida_asteroide_obtenida).to eq vida_asteroide_esperada
    expect(masa_asteroide_obtenida).to eq masa_asteroide_esperada
    expect(vida_estrella_obtenida).to eq vida_estrella_esperada
    expect(masa_estrella_obtenida).to eq masa_estrella_esperada    
  end

 it 'Deberia el asteroide no registrar efectos y la estrella disminuir su vida a 0 cuando estrella choca con asteroide' do
    
    vida_asteroide = 100
    masa_asteroide = 100
    asteroide = Asteroide.new(vida_asteroide, masa_asteroide) 
    vida_estrella = 100
    masa_estrella = 100
    estrella = Estrella.new(vida_estrella, masa_estrella) 
    vida_asteroide_esperada = 100
    masa_asteroide_esperada = 100
    vida_estrella_esperada = 0
    masa_estrella_esperada = 100

    estrella.chocar(asteroide)
    
    vida_asteroide_obtenida = asteroide.vida
    masa_asteroide_obtenida = asteroide.masa    
    vida_estrella_obtenida = estrella.vida
    masa_estrella_obtenida = estrella.masa    

    expect(vida_asteroide_obtenida).to eq vida_asteroide_esperada
    expect(masa_asteroide_obtenida).to eq masa_asteroide_esperada
    expect(vida_estrella_obtenida).to eq vida_estrella_esperada
    expect(masa_estrella_obtenida).to eq masa_estrella_esperada    
  end

  it 'Deberia las dos estrellas disminuir su vida a 0 cuando estrella choca con estrella' do
    
    vida_estrella = 100
    masa_estrella = 100
    estrella_que_choca = Estrella.new(vida_estrella, masa_estrella) 
    estrella_chocada = Estrella.new(vida_estrella, masa_estrella) 
    vida_estrella_que_choca_esperada = 0
    masa_estrella_que_choca_esperada = 100
    vida_estrella_chocada_esperada = 0
    masa_estrella_chocada_esperada = 100

    estrella_que_choca.chocar(estrella_chocada)
    
    vida_estrella_que_choca_obtenida = estrella_que_choca.vida
    masa_estrella_que_choca_obtenida = estrella_que_choca.masa    
    vida_estrella_chocada_obtenida = estrella_chocada.vida
    masa_estrella_chocada_obtenida = estrella_chocada.masa     

    expect(vida_estrella_que_choca_obtenida).to eq vida_estrella_que_choca_esperada
    expect(masa_estrella_que_choca_obtenida).to eq masa_estrella_que_choca_esperada
    expect(vida_estrella_chocada_obtenida).to eq vida_estrella_chocada_esperada
    expect(masa_estrella_chocada_obtenida).to eq masa_estrella_chocada_esperada    
  end

  it 'Nave choca con nuevo objeto espacial agujero negro. La nave disminuye su vida en 150 unidades y el agujero negro sufre efecto nulo.' do
    
    vida_nave = 200
    masa_nave = 200
    nave = Nave.new(vida_nave, masa_nave) 
    
    vida_agujero_negro = 100
    masa_agujero_negro = 100
    agujero_negro = AgujeroNegro.new(vida_agujero_negro, masa_agujero_negro) 
    
    nave.agregar_choque_posible(AgujeroNegro, EfectoDisminuirVida.new(150))

    vida_nave_esperada = 50
    masa_nave_esperada = 200

    nave.chocar(agujero_negro)
    
    vida_nave_obtenida = nave.vida
    masa_nave_obtenida = nave.masa    
    vida_agujero_negro_obtenida = agujero_negro.vida
    masa_agujero_negro_obtenida = agujero_negro.masa    

    expect(vida_nave_obtenida).to eq vida_nave_esperada
    expect(masa_nave_obtenida).to eq masa_nave_esperada    
    expect(vida_agujero_negro).to eq vida_agujero_negro
    expect(masa_agujero_negro).to eq vida_agujero_negro
  end
end