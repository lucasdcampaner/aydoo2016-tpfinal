require 'rspec' 
require 'spec_helper'
require_relative '../model/Asteroide'

describe 'Asteroide' do

  it 'Deberia crear un asteroide con 50 unidades de vida y 100 unidades de masa cuando se instancia' do
    
    vida_esperada = 50
    masa_esperada = 100
    asteroide = Asteroide.new(vida_esperada, masa_esperada) 
    
    vida_obtenida = asteroide.vida
    masa_obtenida = asteroide.masa    

    expect(vida_obtenida).to eq vida_esperada
    expect(masa_obtenida).to eq masa_esperada
  end
end