require 'rspec'
require 'pry'
require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
    it 'exists' do
        dealership = Dealership.new("Acme Auto", "123 Main Street")

        expect(dealership).to be_a Dealership
    end

    it 'has inventory' do
        dealership = Dealership.new("Acme Auto", "123 Main Street")
        
        expect(dealership.inventory).to eq []
        expect(dealership.inventory_count).to eq 0
    end

    it 'adds inventory' do
        dealership = Dealership.new("Acme Auto", "123 Main Street")
        car_1 = Car.new("Ford Mustang", 1500, 36)
        car_2 = Car.new("Toyota Prius", 1000, 48)
        dealership.add_car(car_1)
        dealership.add_car(car_2)
    
        expect(dealership.inventory).to eq [car_1, car_2]
        expect(dealership.inventory_count).to eq 2
    end

    it 'initializes with no inventory' do
        dealership = Dealership.new("Acme Auto", "123 Main Street")
        
        expect(dealership.has_inventory?).to eq (false)
    end

    it 'has inventory' do
        dealership = Dealership.new("Acme Auto", "123 Main Street")
        car_1 = Car.new("Ford Mustang", 1500, 36)
        car_2 = Car.new("Toyota Prius", 1000, 48)
        car_3 = Car.new("Toyota Tercel", 500, 48)
        car_4 = Car.new("Chevrolet Bronco", 1250, 24)

        dealership.add_car(car_1)
        dealership.add_car(car_2)
        
        expect(dealership.has_inventory?).to eq (true)
    end
end