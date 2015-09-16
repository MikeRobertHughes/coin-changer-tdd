class Changer
  def self.run(amt)
    change = []

    quarters = amt / 25
    quarters.times do
      change.push(25)
    end
    amt = amt % 25
    dimes = amt / 10
    dimes.times do
      change.push(10)
    end
    amt = amt % 10
    nickels = amt / 5
    nickels.times do
      change.push(5)
    end
    amt = amt % 5
    change = change.push(5) * nickels if amt != 0
    change = change.push(10) * dimes if amt != 0
    change = change.push(amt) if amt != 0
    return change
  end
end

Changer.run(60)
