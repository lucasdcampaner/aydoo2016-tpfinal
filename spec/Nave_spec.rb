require 'rspec' 
require_relative '../model/Nave'

describe 'Nave' do

  it 'deberia crear una nave con 100 unidades de vida y 100 unidades de masa' do
    
    vidaEsperada = 100
    masaEsperada = 100
    nave = Nave.new(vidaEsperada, masaEsperada) 
    
    vidaObtenida = nave.vida
    masaObtenida = nave.masa    

    expect(vidaObtenida).to eq vidaEsperada
    expect(masaObtenida).to eq masaEsperada
  end

end