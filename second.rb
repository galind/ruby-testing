@symbols_hash = {
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
    current_value = @symbols_hash[s.to_sym]

    if current_value.nil?
      return "Invalid roman number :("
    end

    if current_value >= last_value
      value += current_value
      last_value = current_value
    else
      value -= current_value
    end
  end

  value
end


if __FILE__ == $0
  print "Roman number: "
  user_input = gets.chomp
  splitted = user_input.upcase.chars

  result = roman_to_int(splitted)
  print "Result: #{result}"
end
