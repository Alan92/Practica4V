 
class RadioCircunferencia
 
  def initialize(  )
    @dospi = (2*3.14)
    raise unless @dospi.is_a?(Numeric)   
  end
 
  def radio ( perimetro )
    perimetro / @dospi
  end
 
end
