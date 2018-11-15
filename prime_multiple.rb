def prime_multi(number=10)
    return [] if number < 0
    result = []
    final = Array.new(number) {Array.new(number)}
    row = 0 
    col = 0
    nPrime = 1 
    num = 1
    while number >= nPrime
      if isPrime?(num)
        nPrime += 1
        result << num  
      end 
        num += 1
    end
    result.each do |prime|
      result.each do |num|
        final[row][col] = num * prime 
        col += 1
      end
      row += 1 
      col = 0
    end
    final
end

def isPrime?(num)
    return true if num <= 2
    (2...num).each do |number|
        return false if num % number == 0 
    end
    return true
end


def print_pretty(result)
  result.each do |row|
    p row
  end
  puts 
end


puts "Put n:"
number = gets.to_i
if number != 0 && number!= "/n"
  result =  prime_multi(number.to_i)
else
  result = prime_multi
end
print_pretty(result)
