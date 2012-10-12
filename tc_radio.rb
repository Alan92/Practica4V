# File:  tc_simpleNumber2.rb
 
require "radio"
require "test/unit"
 
class TestRadioCircunferencia < Test::Unit::TestCase
  
  def test_comprobacion
    assert_in_delta(RadioCircunferencia.new().radio(50),7.96178,0.00001)
    puts "Valor del radio de la circunferencia con perimetro 50"
    puts RadioCircunferencia.new().radio(50)  
  end
  
  def test_letra
    assert_in_delta(RadioCircunferencia.new().radio(a),7.96178,0.00001,["El perimetro es una letra"])
  end
  
  def test_numero_negativo
    assert_in_delta(RadioCircunferencia.new().radio(-50),RadioCircunferencia.new().radio(50),0.0,["El perimetro es negativo"])
  end
  
  def test_numero_negativo2
    assert_block do
      [RadioCircunferencia.new().radio(-50)].any? {|radio| radio>0}
    end
  end
  
    def test_numero_negativo3
    assert_equal(RadioCircunferencia.new().radio(-50)-RadioCircunferencia.new().radio(-50).abs,0.0)
  end
 
end
