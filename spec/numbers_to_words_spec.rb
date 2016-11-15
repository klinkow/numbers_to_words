require('numbers_to_words.rb')

describe("Fixnum#number_to_word") do
  it("Returns the name of the number") do
    expect(1.number_to_word()).to(eq("one"))
  end
end

describe("Fixnum#number_to_word") do
  it("For the tens place it will write out the number name") do
    expect(23.number_to_word()).to(eq("twenty-three"))
  end
end

describe("Fixnum#number_to_word") do
  it("For the hundreds place it will write out the number name") do
    expect(365.number_to_word()).to(eq("three hundred sixty-five"))
  end
end
