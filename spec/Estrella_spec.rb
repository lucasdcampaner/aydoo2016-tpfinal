require 'rspec' 
require_relative '../model/Estrella'

describe 'Estrella' do

  it 'deberia crear una estrella con 50 unidades de vida y 10 unidades de masa' do
    
    vidaEsperada = 50
    masaEsperada = 10
    estrella = Estrella.new(vidaEsperada, masaEsperada) 
    
    vidaObtenida = estrella.vida
    masaObtenida = estrella.masa    

    expect(vidaEsperada).to eq vidaObtenida
    expect(masaEsperada).to eq masaObtenida
  end

end