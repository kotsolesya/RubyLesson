SGE New Developer Challenge #2



class TaskHash
  $myh={'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: {'yesterday1' => 34, 'yesteryear' => 2014}, key: [{'yes' => 23, 'b' => 'travel'}], 'yesterday1' => 34, 'yesteryear' => 2014};
  def output(t)
    t.each do |k,v|
      print "#{k} #{v} "
    end
  end

  def symbolize_keys!(thing)
    case thing
      when Array
        thing.each{|v| symbolize_keys!(v)}
      when Hash
        thing.symbolize_keys!
        thing.values.each{|v| symbolize_keys!(v)}
    end
    thing
  end

  def symbolize_keys(thing)
    case thing
      when Array
        thing.map{|v| symbolize_keys(v)}
      when Hash
        inj = thing.inject({}) {|h, (k,v)| h[k] = symbolize_keys(v); h}
        inj.symbolize_keys
      else
        thing
    end
  end

end

ob = TaskHash.new()
ob.output($myh)
puts "\nhash after =\n"
ob.symbolize_keys($myh)
ob.output($myh)
