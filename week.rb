romano = ["I","IV","V","IX","X","XL","L","XC","C","CD","D","CM","M"]


class Week_Fire
	def initialize(romano)
		@romano = romano
	end

	def romano_a_numero(string)
  		numero = [1,4,5,9,10,40,50,90,100,400,500,900,1000]
  		@romano 
  		hash = @romano.zip(numero).inject({}) {|r,ele| r[ele.first] = ele.last; r}
  		reg = /M|CM|D|CD|C|XC|L|XL|X|IX|V|IV|I/
  		temp = string.scan(reg)
  		temp.uniq.inject(0) do |r,ele|
    	r += temp.count(ele)*hash[ele]
    	end
  	end
end

week_fire = Week_Fire.new(romano)

puts week_fire.romano_a_numero("VI")