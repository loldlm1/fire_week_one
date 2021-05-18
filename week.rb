romano = ["I","IV","V","IX","X","XL","L","XC","C","CD","D","CM","M"]
likes = to_s

class Week
	def initialize(romano, likes)
		@romano = romano
    @likes = likes
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

    def facebook(likes)
      case likes
      when 0..999
        puts "#{likes}k"
      when 1.000..9.000
        puts "#{likes}K"
      when 10.000..90.000
        puts "#{likes}K" 
      when 100.000..999.999
        puts "#{likes}K"
      when 1_000_000..999_000_000
        puts "#{likes.to_i}M"
      end
    end
end

week_fire = Week.new(romano, likes)

week_fire.romano_a_numero("XL")
week_fire.facebook(422)
week_fire.facebook(9.000.to_i)
week_fire.facebook(20.000.to_i)
week_fire.facebook(340.000.to_i)
week_fire.facebook(5_000_00.to_i)