=begin
написать рекурсивный метод, который будет переводить ключи стринговые ключи в символьные
=end

class Task4_Class

 #$myhash={'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: {'yesterday1' => 34, 'yesteryear' => 2014}, key: [{'yes' => 23, 'b' => 'travel'}], 'yesterday1' => 34, 'yesteryear' => 2014};
  $myhash={'yes' => 23, 'b' => 'travel', try: {'yesterday1' => 34, 'yesteryear' => 2014}};

   def output(t)
    t.each do |k,v|
     print "#{k} #{v} "
    end
   end
# не видаляю бо цей метод переводить кеу у символ
 def symbolize_keys(my_hash)
   puts my_hash
   my_hash.keys.each { |key| my_hash[key.to_s.to_sym] = my_hash.delete(key) }
   puts my_hash
   end

  #а це працює тільки не повністю поняла як же ж сам хеш переприсвоїть чи що тут треба?
 def symbolize_recursive(hash)
   {}.tap do |h|
     hash.each { |key, value| h[key.to_s.to_sym] = map_value(value)
     puts h}
     #hash.keys.each { |key| hash[key.to_s.to_sym] = hash.delete(key) }

   end

 end
  # перевіряє чи це значення чи хеш?
 def map_value(thing)
   case thing
     when Hash
       symbolize_recursive(thing)
     when Array
       thing.map { |v| map_value(v) }
     else
       thing
   end
 end


 end
task4 = Task4_Class.new()
task4.output($myhash)
puts "\nhash after =\n"
#task4.symbolize_keys($myhash)
task4.symbolize_recursive($myhash)
