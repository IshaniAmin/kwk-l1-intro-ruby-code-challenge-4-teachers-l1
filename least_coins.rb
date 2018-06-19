#write out your code here

def least_coins(cents)

  coins = {
    :quarters => 0,
    :dimes => 0,
    :nickels => 0,
    :pennies => 0
  }

  quarter = 25
  dime = 10
  nickel = 5
  penny = 1

  counter = 0
  place = cents

  until cents == 0
    if cents > quarter
        coins[:quarters] += 1
        cents = cents - quarter
    elsif cents > dime
        coins[:dimes] += 1
        cents = cents - dime
    elsif cents > nickel
        coins[:nickels] += 1
        cents = cents - nickel
    elsif cents >= penny
        coins[:pennies] += 1
        cents = cents - penny
    else
      break
    end
  end

  coins

end
