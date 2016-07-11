require 'rspec' 
require 'spec_helper'
require_relative '../model/AgujeroNegro'

describe 'AgujeroNegro' do

  it 'Deberia crear un agujero negro con 500 unidades de vida y 1000 unidades de masa cuando se instancia' do
    
    vida_esperada = 500
    masa_esperada = 1000
    agujero_negro = AgujeroNegro.new(vida_esperada, masa_esperada) 
    
    vida_obtenida = agujero_negro.vida
    masa_obtenida = agujero_negro.masa    

    expect(vida_obtenida).to eq vida_esperada
    expect(masa_obtenida).to eq masa_esperada
  end
end