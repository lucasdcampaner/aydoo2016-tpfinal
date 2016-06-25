require 'rspec' 
require_relative '../model/ObjetoEspacial'

describe 'ObjetoEspacial' do

  it 'Deberia crear un objeto espacial con 100 unidades de vida y 100 unidades de masa' do
    
    vida_esperada = 100
    masa_esperada = 100
    
    objeto_espacial = ObjetoEspacial.new() 
    
    vida_obtenida = objeto_espacial.vida
    masa_obtenida = objeto_espacial.masa    
    
    expect(vida_obtenida).to eq vida_esperada
    expect(masa_obtenida).to eq masa_esperada
  end
end
