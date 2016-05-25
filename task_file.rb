class TaskFile
  def initialize(file_path)

    @path=file_path

  end
  def output
    ok_hash = {}

    @result={}
    File.open(@path).readlines.each do |line|
      # тут розпридфляєм по хешу де ключ це кількість симолів а значення - масив слів відповідної кількості
      # для ключа нового створюєм масив [] а якщо є то просто дописуєм << line.strip
      ok_hash.has_key?(line.length-2) ? ok_hash[line.length-2]<< line.strip : ok_hash[line.length-2] = []
    end

    ok_hash.each do |k,v|
      # тут відкидаєм слова до двох символів
        if k>=0 && k<=2
          next
        end
      # перевірка чи є слова з відповідні до задачі
        v.each do |element|
          if @result.has_key?("#{element[0..-3]}#{element[-1]}#{element[-2]}")
            if element!="#{element[0..-3]}#{element[-1]}#{element[-2]}"
            @result["#{element[0..-3]}#{element[-1]}#{element[-2]}"]=element
          #  puts "#{element}\t\t#{element[0..-3]}#{element[-1]}#{element[-2]}"
            end
          else
            @result["#{element}"]=nil
          end

        end
    end

    # result.each do |k,v|
    #   if v!=nil
    #     puts "[#{k},\t#{v}]"
    #   end
    # end

    @result.delete_if {|key, value| value == nil}
    @result.to_a


        #puts result

  end

end

test = TaskFile.new("./wordsEn.txt")
print test.output

