require 'rspec' 
require_relative '../model/Asteroide'

describe 'Asteroide' do

  it 'deberia crear un asteroide con 50 unidades de vida y 100 unidades de masa' do
    
    vidaEsperada = 50
    masaEsperada = 100
    asteroide = Asteroide.new(vidaEsperada, masaEsperada) 
    
    vidaObtenida = asteroide.vida
    masaObtenida = asteroide.masa    

    expect(vidaObtenida).to eq vidaEsperada
    expect(masaObtenida).to eq masaEsperada
  end

end