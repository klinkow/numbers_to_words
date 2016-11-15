class Fixnum
  numbers = Hash.new()
  numbers.store(0, "")
  numbers.store(1, "one")
  numbers.store(2, "two")
  numbers.store(3, "three")
  numbers.store(4, "four")
  numbers.store(5, "five")
  numbers.store(6, "six")
  numbers.store(7, "seven")
  numbers.store(8, "eight")
  numbers.store(9, "nine")
  numbers.store(10, "ten")
  numbers.store(11, "eleven")
  numbers.store(12, "twelve")
  numbers.store(13, "thirteen")
  numbers.store(14, "fourteen")
  numbers.store(15, "fifteen")
  numbers.store(16, "sixteen")
  numbers.store(17, "seventeen")
  numbers.store(18, "eighteen")
  numbers.store(19, "nineteen")
  numbers.store(20, "twenty")
  numbers.store(30, "thirty")
  numbers.store(40, "forty")
  numbers.store(50, "fifty")
  numbers.store(60, "sixty")
  numbers.store(70, "seventy")
  numbers.store(80, "eighty")
  numbers.store(90, "ninety")
  numbers.store(100, "hundred")
  numbers.store(1000, "thousand")
  numbers.store(1000000, "million")
  numbers.store(1000000000, "billion")
  numbers.store(1000000000000, "trillion")

  define_method(:number_to_word) do
    output = []
    input_as_string = self.to_s()
    inputted_numbers = input_as_string.split("")
    inputted_numbers = inputted_numbers.map(&:to_i)
    if inputted_numbers.size === 2
      tens_value = inputted_numbers[0]*10
      output.push(numbers.fetch(tens_value))
      output.push("-")
      ones_value = inputted_numbers[1]
      output.push(numbers.fetch(ones_value))
      output_string = output.join()
    else
    end
    output_string
  end
end
