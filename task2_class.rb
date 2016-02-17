class Task2Class
  def initialize(n)
    @b = Array.new(n){"#{rand((Time.now - 60*60*24*365)..Time.now).strftime("%d.%m")} #{rand(-10..10)}"}
    @cm=Array.new(12,0)
    @kt=Array.new(12,0)
  end

  def countm
   @b.each { |tmp|
     t=tmp[6..7].to_i
     mounts=tmp[3..4].to_i-1
    @cm[mounts]=@cm[mounts]+tmp[6..7].to_i
     @kt[mounts]=@kt[mounts]+1
        }
=begin   print "mount= "
   print "#{@cm} "
     puts
   print "temperat= "
   print "#{@kt} "
   puts
=end
  end

  def avg
    i=0
    while i<12
        if (@kt[i]!=0)
        print "m=#{i+1}  t=#{@cm[i]/@kt[i]}\n"
        else print "m=#{i+1}  t=#{@cm[i]}\n"
        end
      i=i+1
    end
  end

  def output
    puts @b.inspect
    puts @cm.inspect
    puts @kt.inspect
  end
end

task2 = Task2Class.new(10)
task2.countm
task2.avg
task2.output

