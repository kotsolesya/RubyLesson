=begin
написать рекурсивный метод, который будет переводить ключи стринговые ключи в символьные
=end

class Task4_Class

  def output
    h={'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: {'yesterday1' => 34, 'yesteryear' => 2014}, key: [{'yes' => 23, 'b' => 'travel'}], 'yesterday1' => 34, 'yesteryear' => 2014};

    h.each_key do |key|

      puts key.to_s.to_sym


    end

    #puts h.select {|k,v| k == 'yes'}

    #/yes/.match(k)

  end
end
task4 = Task4_Class.new()
task4.output
