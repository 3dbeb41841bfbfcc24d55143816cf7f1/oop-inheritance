# HackerCola Vending Machine

## Write a vending machine class that sells HackerCola.

* This simple vending machine only dispenses one product: HackerCola
* The vending machine should keep track of:
    - the `price` for a HackerCola in cents
    - the current `quantity` of HackerCola in the vending machine
    - the `amount_deposited` towards the purchase of a HackerCola in cents
* The initialize method should take the following arguments:
    - the `price` for a HackerCola
    - the initial `quantity` of HackerCola
* Write a method for each coin that the vending machine recognizes:
   - nickel, dime, quarter
   - each method should increase the `amount_deposited` accordingly
* A `purchase` method that returns a HackerCola and the correct change.
   - remember that a successful purchase should clear the `amount_deposited`
     and decrement the current `quantity`
   - use an Array as the return value, for example:
     `["HackerCola", 30]` would return the drink and 30 cents.
   - if `purchase` is called with insufficent `amount_deposited`, return an
     error message, for example `Please enter #{remaining_amount} cents.`
   - if `purchase` is called with no more HackerCola, return an error message
     and the `amount_deposited`, for example:
     `["Sold Out", 75]`
* A `refill` method that takes a quantity argument and adds it to the
  current `quantity`.
* A nice `to_s` method that prints the state of the VendingMachine:
  `HackerCola: quantity=100, price=75, amount_deposited=25`
* Use the following to test your VendingMachine

```ruby
vending_machine = VendingMachine.new(100, 75)
puts vending_machine               # HackerCola: quantity=100, price=75, amount_deposited=0

vending_machine.nickel
vending_machine.dime
vending_machine.quarter
puts vending_machine               # HackerCola: quantity=100, price=75, amount_deposited=40
puts vending_machine.purchase.to_s # ["Please enter 35 cents."]

vending_machine.nickel
vending_machine.dime
vending_machine.quarter
puts vending_machine.purchase.to_s # ["HackerCola", 5]
puts vending_machine
```
