# Dr Mike Version - Version 2 at the bottom!

class VendingMachine

  attr_reader :quantity, :price

  def initialize(quantity, price)
    @quantity = quantity
    @price = price
    @amount_deposited = 0
  end

  def nickel
    @amount_deposited += 5
    self
  end

  def dime
    @amount_deposited += 10
    self
  end

  def quarter
    @amount_deposited += 25
    self
  end

  def sold_out?
    @quantity == 0
  end

  def insufficient_amount?
    @amount_deposited < @price
  end

  def purchase
    case
    when sold_out?
      return ["Sold Out", @amount_deposited]
    when insufficient_amount?
      return ["Please enter #{@price - @amount_deposited} cents."]
    else
      change = @amount_deposited - @price
      @amount_deposited = 0
      @quantity -= 1
      return ["HackerCola", change]
    end
  end

  def refill(amount)
      @quantity += amount
  end

  def to_s
    "HackerCola: quantity=#{@quantity}, price=#{@price}, amount_deposited=#{@amount_deposited}"
  end
end

vending_machine = VendingMachine.new(100, 75)
puts vending_machine                  # HackerCola: quantity=100, price=75, amount_deposited=0

# Add a nickel, a dime, and a quarter
vending_machine.nickel.dime.quarter

puts vending_machine                  # HackerCola: quantity=100, price=75, amount_deposited=40
puts vending_machine.purchase.to_s    # ["Please enter 35 cents."]

# Add a nickel, a dime, and a quarter
vending_machine.nickel.dime.quarter
puts vending_machine.purchase.to_s    # ["HackerCola", 5]
puts vending_machine                  # HackerCola: quantity=99, price=75, amount_deposited=0



# VERSION 2

# class VendingMachine
#     attr_accessor :price
    
#     def initialize(price, quantity)
#         @price = price
#         @quantity = quantity
#         @amount_deposited = 0
#         @total_sold = 0
#         @total_revenue = 0
#     end
    
#     def nickel
#         @amount_deposited += 5
#     end
    
#     def dime
#         @amount_deposited += 10
#     end
    
#     def quarter
#         @amount_deposited += 25
#     end
    
#    def purchase
#     if @amount_deposited >= @price && @quantity != 0
#      change = @amount_deposited - @price
#      @quantity -= 1
#      @amount_deposited = 0
#      @total_sold += 1
#      @total_revenue += @price
#      ["Hackercola", change]
#     elsif @amount_deposited < @price && @quantity != 0
#      "Please enter #{@price - @amount_deposited} more cents"
#     else
#      out = ["Sold Out", @amount_deposited]
#      @amount_deposited = 0
#      out
#     end
#   end
 
#  def refill
#     @quantity = quantity =+ @quantity
#  end
 
#  def to_s
#     "HackerCola: quantity=#{@quantity}, price=#{@price}, amount_deposited=#{@amount_deposited}, total_sold=#{@total_sold}"
#  end
# end