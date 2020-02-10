!# /usr/bin/env ruby

require_relative 'bike'

bike = Bike.new(1, :pink, 99.99)

bike.cargo.add(:apples)
bike.cargo.add(:water)
bike.cargo.add(:repair_kit)

puts "Space for #{bike.remaining_capacity} items left."

rental = Rental.new(bike)
