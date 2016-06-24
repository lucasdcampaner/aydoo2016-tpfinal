require 'rspec' 
require_relative '../model/Nave'
require_relative '../model/Asteroide'

describe 'Distintos tipos de choque' do

  it 'Nave con asteroide: la nave disminuye su masa a 50 unidades y el asteroide la aumenta en 10' do
    
    vidaNave = 100
    masaNave = 100
    nave = Nave.new(vidaNave, masaNave) 
    vidaAsteroide = 50
    masaAsteroide = 100
    asteroide = Asteroide.new(vidaAsteroide, masaAsteroide) 
    vidaNaveEsperada = 100
    masaNaveEsperada = 50
    vidaAsteroideEsperada = 50
    masaAsteroideEsperada = 110

    nave.chocar(asteroide)
    
    vidaNaveObtenida = nave.vida
    masaNaveObtenida = nave.masa    
    vidaAsteroideObtenida = asteroide.vida
    masaAsteroideObtenida = asteroide.masa    

    expect(vidaNaveObtenida).to eq vidaNaveEsperada
    expect(masaNaveObtenida).to eq masaNaveEsperada
    expect(vidaAsteroideObtenida).to eq vidaAsteroideEsperada
    expect(masaAsteroideObtenida).to eq masaAsteroideEsperada    
  end

  it 'Asteroide con nave: la nave disminuye su masa a 50 unidades y el asteroide la aumenta en 10' do
    
    vidaNave = 100
    masaNave = 100
    nave = Nave.new(vidaNave, masaNave) 
    vidaAsteroide = 50
    masaAsteroide = 100
    asteroide = Asteroide.new(vidaAsteroide, masaAsteroide) 
    vidaNaveEsperada = 100
    masaNaveEsperada = 50
    vidaAsteroideEsperada = 50
    masaAsteroideEsperada = 110

    asteroide.chocar(nave)
    
    vidaNaveObtenida = nave.vida
    masaNaveObtenida = nave.masa    
    vidaAsteroideObtenida = asteroide.vida
    masaAsteroideObtenida = asteroide.masa    

    expect(vidaNaveObtenida).to eq vidaNaveEsperada
    expect(masaNaveObtenida).to eq masaNaveEsperada
    expect(vidaAsteroideObtenida).to eq vidaAsteroideEsperada
    expect(masaAsteroideObtenida).to eq masaAsteroideEsperada    
  end

end