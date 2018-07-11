#write out your code here

def least_coins(cents)

  coins = {
    :quarters => 0,
    :dimes => 0,
    :nickels => 0,
    :pennies => 0
  }

  counter = 0

  until cents == 0
    if cents >= 25
        coins[:quarters] += 1
        cents = cents - 25
    elsif cents >= 10
        coins[:dimes] += 1
        cents = cents - 10
    elsif cents >= 5
        coins[:nickels] += 1
        cents = cents - 5
    elsif cents >= 1
        coins[:pennies] += 1
        cents = cents - 1
    else
      break
    end
  end
  coins
end

puts least_coins(7)
