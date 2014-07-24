require("rspec")
require("calculator")

describe('calculator') do
  it('Turns the word "plus" into the operator +') do
    calculator("what is 153 plus 32").should(eq(185))
  end
  it('Divides two numbers into an integer when asked') do
    calculator("what is 20 divided by 5").should(eq(4.0))
  end
  it('Multiplies two numbers when asked in words') do
    calculator("What is the total of 31 times 2?").should(eq(62.0))
  end
  it('Returns the float for any operator') do
    calculator("What is 31 divided by 2?").should(eq(15.5))
  end
  it('Finds the specified power of of any number ') do
    calculator("What is 2 to the 4th power").should(eq(16.0))
  end
  it('subtracts two numbers') do
    calculator("What is 11 minus 4").should(eq(7.0))
  end
  it('adds and subtracts 3 numbers') do
    calculator("What is 4 minus 1 plus 7").should(eq(10.0))
  end
end
