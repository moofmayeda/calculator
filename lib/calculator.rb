def calculator(input_string)
  dictionary = {"plus" => '+', "divided" => '/', "times" => '*', "power" => '**', "minus" => '-'}
  numbers = []
  operators = []
  counter = 0
  subtotal = 0
  input_string.scan(/\d+/) do |x|
    numbers << x.to_f
  end
  input_string.split(' ').each do |word|
    if dictionary.has_key?(word)
      operators << dictionary[word]
    end
  end
  subtotal = numbers[counter]

  operators.each do |operator|
    subtotal += subtotal.send(operator, numbers[counter + 1])
    counter +=1
  end
  subtotal
end
