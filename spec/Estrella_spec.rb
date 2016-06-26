require 'rspec' 
require 'spec_helper'
require_relative '../model/Estrella'

describe 'Estrella' do

  it 'Deberia crear una estrella con 50 unidades de vida y 10 unidades de masa cuando se instancia' do
    
    vidaEsperada = 50
    masaEsperada = 10
    estrella = Estrella.new(vidaEsperada, masaEsperada) 
    
    vidaObtenida = estrella.vida
    masaObtenida = estrella.masa    

    expect(vidaEsperada).to eq vidaObtenida
    expect(masaEsperada).to eq masaObtenida
  end
end