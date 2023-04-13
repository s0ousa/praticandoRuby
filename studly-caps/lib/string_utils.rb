class StringUtils
  def wavefy(string)
    array = string.split("")

    for i in array 
      if array.index(i)%2==0
        array[array.index(i)] = i.downcase
      else
        array[array.index(i)] = i.upcase
      end  
    end  

    return array.join("")
  end
end
