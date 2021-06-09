romano = ["I","IV","V","IX","X","XL","L","XC","C","CD","D","CM","M"]

array = (1..100)

class Week
  def initialize(romano, array)
    @romano = romano
    @array = array
  end

  def romano_a_numero(string)
    numero = [1,4,5,9,10,40,50,90,100,400,500,900,1000]
    hash = @romano.zip(numero).inject({}) {|r,ele| r[ele.first] = ele.last; r}
    reg = /M|CM|D|CD|C|XC|L|XL|X|IX|V|IV|I/
    temp = string.scan(reg)
    temp.uniq.inject(0) do |r,ele|
      r += temp.count(ele)*hash[ele]
      r
    end
  end

  def array_random(a)
    array = @array.to_a.sample(a)
    puts array.inspect
    return array.max
  end

  def facebook(likes)
    if likes > 999 and likes < 1_000_000
       "#{likes / 1_000}k"
    elsif likes >=  1_000_000
       "#{likes / 1_000_000}M"
    else
       "#{likes}"
    end
  end

  def array_hash(r)
    r = r.each_with_index
    r = r.sort_by {  |value, i| }.to_h
    r.invert
  end

  def vocales(a)
    vowels = %w(a e o u i)
    a = a.each_with_object(Hash.new(0)) do |c,h| 
      h[c] += 1 if vowels.include?(c) 
    end
    a.map.to_h do |value,key|
    a = key,value
    a
    end
  end
end

week_fire = Week.new(romano, array)

week_fire.romano_a_numero("XL")

week_fire.array_random(5)

week_fire.facebook(1_000_000)

week_fire.array_hash(["make", "it", "real", 34, 925, 322, 0, 1, 2, 3])

week_fire.vocales(["c", "o", "m", "p", "u", "t", "a", "d", "o", "r", "a"])
