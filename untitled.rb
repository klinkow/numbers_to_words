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

  define_method(:number_to_word) do
    two_numbers_array = []
    last_two_numbers_array = []
    output = []
    output_string = ""
    input_as_string = self.to_s()
    inputted_numbers = input_as_string.split("")
    inputted_numbers = inputted_numbers.map(&:to_i)

    # 1-digit numbers
    if inputted_numbers.size === 1
      output_string = numbers.fetch(inputted_numbers[0])

    # 2-digit numbers
    elsif inputted_numbers.size === 2
       if inputted_numbers[0] === 1
         output.push(numbers.fetch(inputted_numbers.join().to_i()))
         output_string = output.join()
       else
         output.push(numbers.fetch(inputted_numbers[0]*10))
         output.push(numbers.fetch(inputted_numbers[1]))
         output_string = output.join()
       end

    # 3-digit numbers
    elsif inputted_numbers.size === 3
      output.push(numbers.fetch(inputted_numbers[0]))
      output.push(" hundred ")

      if inputted_numbers[1] === 1
        last_two_numbers = two_numbers_array.push(inputted_numbers[1], inputted_numbers[2]).join()
        output.push(numbers.fetch(last_two_numbers.to_i()))
        output_string = output.join()
      else
        output.push(numbers.fetch(inputted_numbers[1]*10))
        output.push(numbers.fetch(inputted_numbers[2]))
        output_string = output.join()
      end

    # 4-digit numbers
    elsif inputted_numbers.size === 4
     output.push(numbers.fetch(inputted_numbers[0]))
     output.push(" thousand ")
     output.push(numbers.fetch(inputted_numbers[1]))
     if inputted_numbers[1] > 0
       output.push(" hundred ")
     else
     end
     if inputted_numbers[2] === 1
       last_two_numbers = two_numbers_array.push(inputted_numbers[2], inputted_numbers[3]).join()
       output.push(numbers.fetch(last_two_numbers.to_i()))
       output_string = output.join()
     else
       output.push(numbers.fetch(inputted_numbers[2]*10))
       output.push(numbers.fetch(inputted_numbers[3]))
       output_string = output.join()
     end

    # 5-digit numbers
      elsif inputted_numbers.size === 5
        if inputted_numbers[0] === 1
         two_numbers_array.push(inputted_numbers[0], inputted_numbers[1])
         output.push(numbers.fetch(two_numbers_array.join().to_i()))
        else
         output.push(numbers.fetch(inputted_numbers[0]*10))
         output.push(numbers.fetch(inputted_numbers[1]))
        end
        output.push(" thousand ")
        output.push(numbers.fetch(inputted_numbers[2]))
        output.push(" hundred ")
        if inputted_numbers[3] === 1
         last_two_numbers = two_numbers_array.push(inputted_numbers[3], inputted_numbers[4]).join()
         output.push(numbers.fetch(last_two_numbers.to_i()))
         output_string = output.join()
        else
         output.push(numbers.fetch(inputted_numbers[3]*10))
         output.push(numbers.fetch(inputted_numbers[4]))
         output_string = output.join()
        end

      # 6-digit numbers
        # elsif inputted_numbers.size === 6
        #   output.push(numbers.fetch(inputted_numbers[0])
        #   output.push(" hundred ")
        #   if inputted_numbers[1] === 1
        #    two_numbers_array.push(inputted_numbers[1], inputted_numbers[2])
        #    output.push(numbers.fetch(two_numbers_array.join().to_i()))
        #   else
        #    output.push(numbers.fetch(inputted_numbers[1]*10))
        #    output.push(numbers.fetch(inputted_numbers[2]))
        #   end
        #   output.push(" thousand ")
        #   output.push(numbers.fetch(inputted_numbers[3]))
        #   output.push(" hundred ")
        #   if inputted_numbers[4] === 1
        #    last_two_numbers = last_two_numbers_array.push(inputted_numbers[4], inputted_numbers[5]).join()
        #    output.push(numbers.fetch(last_two_numbers.to_i()))
        #    output_string = output.join()
        #   else
        #    output.push(numbers.fetch(inputted_numbers[4]*10))
        #    output.push(numbers.fetch(inputted_numbers[5]))
        #    output_string = output.join()
        #   end

     end
     output_string
   end
 end
