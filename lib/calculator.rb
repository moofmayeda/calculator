def calculator(input_string)
  dictionary = {"plus" => '+', "divided" => '/', "times" => '*', "power" => '**', "minus" => '-'}
  numbers = []
  operators = []
  counter = 0

  input_string.scan(/\d+/) do |x|
    numbers << x.to_f
  end
  input_string.split(' ').each do |word|
    if dictionary.has_key?(word)
      operators << dictionary[word]
    end
  end
  subtotal = numbers[0]
  numbers.slice(1..-1).each do |number|
    subtotal = subtotal.send(operators[counter], number)
    counter += 1
  end
  subtotal
end
