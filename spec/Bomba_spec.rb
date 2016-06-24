require 'rspec' 
require_relative '../model/Bomba'

describe 'Bomba' do

  it 'deberia crear una bomba con 200 unidades de vida y 90 unidades de masa' do
    
    vidaEsperada = 200
    masaEsperada = 90
    bomba = Bomba.new(vidaEsperada, masaEsperada) 
    
    vidaObtenida = bomba.vida
    masaObtenida = bomba.masa    

    expect(vidaEsperada).to eq vidaObtenida
    expect(masaEsperada).to eq masaObtenida
  end

end