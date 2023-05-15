$symbols_hash = {
  I: 1,
  V: 5,
  X: 10,
  L: 50,
  C: 100,
  D: 500,
  M: 1000
}


def roman_to_int(roman)
  value = 0
  last_value = 0
  roman.reverse.each do |s|
    current_value = $symbols_hash[s.to_sym]

    if current_value >= last_value
      value += current_value
      last_value = current_value
    else
      value -= current_value
    end
  end
  return value
end


if __FILE__ == $0
  print "Roman number: "
  user_input = gets.chomp
  user_input.upcase!
  splitted = user_input.chars

  splitted.each do |s|
    result = $symbols_hash.key?(s.to_sym)
    unless result
      print "Invalid roman number :("
      exit
    end
  end

  result = roman_to_int(splitted)
  print "Result: #{result}"
end
