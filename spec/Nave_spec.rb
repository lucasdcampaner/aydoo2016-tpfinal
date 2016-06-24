require 'rspec' 
require_relative '../model/Nave'

describe 'Nave' do

  it 'deberia crear una nave con 100 unidades de vida y 100 unidades de masa' do
    
    vida_esperada = 100
    masa_esperada = 100
    nave = Nave.new(vida_esperada, masa_esperada) 
    
    vida_obtenida = nave.vida
    masa_obtenida = nave.masa    

    expect(vida_obtenida).to eq vida_esperada
    expect(masa_obtenida).to eq masa_esperada
  end

end