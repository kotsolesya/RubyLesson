class TaskFile

  def output
   h= Hash[File.read('wordsEn.txt').split("\n").map{|i|i.split(' ')}]

    h.each do |k,v|
      if k=="#{k[0..-3]}#{k[-1]}#{k[-2]}"
        puts "#{k} \t\t-- #{k[0..-3]}#{k[-1]}#{k[-2]}"
      end

    end
  end


end
tf = TaskFile.new()
tf.output

