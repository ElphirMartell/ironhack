require 'pry'
require 'date'

class Item
    attr_reader :price
    def initialize
        @price = price
    end

     def apply_discount
        @price
    end

end

class Houseware
    attr_reader :price
    def initialize
        @price = price
    end
end

class Fruit < Item
    def initialize
        @price = 10
    end

    def apply_discount
        if date == saturday || sunday
            price * 0.1
        else
            price * 1
        end
    end
end


class Rice < Item
    def initialize
        @price = 1
    end
end

class VacuumCleaner < Houseware
    def initialize
        @price = 150
    end

    def apply_discount
        if price >= 100
        price * 0.05
        end
    end
end

class Anchovies < Item
    def initialize
        @price = 2
    end
end


class ShoppingCart
    attr_reader :price
    def initialize
        @total_items = []
    end

    def add_items(item)
        @total_items.push(item)
    end

    def calculate_total
        total = 0
        for item in @total_items
            total += item.apply_discount
        end
        total -= discount_shopping_cart(total)
        puts "Your total is #{total} dollars."
    end

    def discount_shopping_cart(total)
        if @total_items.size >= 5
            total * 0.1
        end
    end

end

my_cart = ShoppingCart.new
5.times {my_cart.add_items(Fruit.new)}
10.times {my_cart.add_items(Rice.new)}
my_cart.add_items(VacuumCleaner.new)
13.times {my_cart.add_items(Anchovies.new)}

puts my_cart.calculate_total