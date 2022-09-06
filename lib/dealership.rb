class Dealership
    attr_reader :add_car, :inventory, :cars_by_make

    def initialize(name, address)
        @name = name
        @address = address
        @inventory = []
    end

    def inventory_count
        @inventory.length
    end

    def add_car(car)
        @inventory << car
    end

    def has_inventory?
        !@inventory.empty?
    end

end