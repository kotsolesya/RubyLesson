class Task1Class
  def initialize(n)
    @a = Array.new(n).map{Array.new(n){rand(-10..10)}}
  end

  def output
    puts "a=#{@a}"
    puts
    puts "negativ a = #{@a.flatten.reject { |e| e>0 }}"
  end

  def sum
    negative = @a.flatten.reject { |e| e>0 }
    puts "negativ = #{negative.inject(0) { |sum, e| sum+=e }}"
  end

end
olesya = Task1Class.new(4)
olesya.output
olesya.sum



