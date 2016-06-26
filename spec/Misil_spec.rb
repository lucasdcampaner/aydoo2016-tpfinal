require 'rspec' 
require 'spec_helper'
require_relative '../model/Misil'

describe 'Misil' do

  it 'Deberia crear un misil con 10 unidades de vida y 30 unidades de masa cuando se instancia' do
    
    vidaEsperada = 10
    masaEsperada = 30
    misil = Misil.new(vidaEsperada, masaEsperada) 
    
    vidaObtenida = misil.vida
    masaObtenida = misil.masa    

    expect(vidaEsperada).to eq vidaObtenida
    expect(masaEsperada).to eq masaObtenida
  end
end