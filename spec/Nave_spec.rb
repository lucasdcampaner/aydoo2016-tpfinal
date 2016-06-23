require 'rspec' 
require_relative '../model/ObjetoEspacial'
require_relative '../model/Nave'

describe 'Nave' do

  it 'deberia crear una nave con 100 unidades de vida y 100 unidades de masa' do
    
    vidaEsperada = 100
    masaEsperada = 100
    nave = Nave.new(vidaEsperada, masaEsperada) 
    
    vidaObtenida = nave.vida
    masaObtenida = nave.masa    

    expect(vidaEsperada).to eq vidaObtenida
    expect(masaEsperada).to eq masaObtenida
  end

end