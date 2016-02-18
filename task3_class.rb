class Task3_Class


  def output
    h={'yes'=>23, 'b'=>'travel', 'yesterday'=>34, 5=>'234',:yesss=> :fg, try: 30, key: 'some value', 'yesterday 1' =>34, 'yesteryear' =>2014};

          h.each_key do |key|

            puts key if key.to_s.include?("yes")


          end

   #puts h.select {|k,v| k == 'yes'}

    #/yes/.match(k)

  end
end
task3 = Task3_Class.new()
task3.output


