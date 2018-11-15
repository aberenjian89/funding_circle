require 'rspec'
require_relative '../prime_multiple'

describe "Getting multiplication with 5 primes" do 
  it "return first 4 primes multiplication" do 
    result = prime_multi(5)
    expect(result).to be_a Array
    expect(result).to include([5, 10, 15, 25, 35])
  end
end

describe "Getting prime multiplication with n primes" do 
  it "return first n primes multiplication" do 
    result = prime_multi
    expect(result).to be_a Array
    expect(result).to include([17, 34, 51, 85, 119, 187, 221, 289, 323, 391])
  end
end

describe "Getting prime multiplication with -1 primes" do 
  it "calling function with negative value" do 
    result = prime_multi(-100)
    expect(result).to be_a Array 
    expect(result).to eq([])
  end
end


