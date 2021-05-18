romano = ["I","IV","V","IX","X","XL","L","XC","C","CD","D","CM","M"]

class Week
  def initialize(romano)
    @romano = romano
  end

  def romano_a_numero(string)
    numero = [1,4,5,9,10,40,50,90,100,400,500,900,1000]
    hash = @romano.zip(numero).inject({}) {|r,ele| r[ele.first] = ele.last; r}
    reg = /M|CM|D|CD|C|XC|L|XL|X|IX|V|IV|I/
    temp = string.scan(reg)
    temp.uniq.inject(0) do |r,ele|
      r += temp.count(ele)*hash[ele]
      puts "#{r}"
    end
  end
end

week_fire = Week.new(romano)

week_fire.romano_a_numero("XL")