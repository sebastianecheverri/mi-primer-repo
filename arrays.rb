array = [1, "Pedro", true, false, "Juan"]
array[4] = "Sebas" # reemplazamos el elemento en la posición 1

array.each_with_index do |element,index|
  puts "#{index}:#{element}"
end
# [1, "Germán", true, false, "Juan"]
