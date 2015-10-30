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
        if Time.now.saturday? == true || Time.now.sunday? == true
            price * 0.9
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
        price * 0.95
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

class Shop
    attr_reader :items
    def initialize
        @fruit_stock = []
        @rice_stock = []
        @vacuumcleaner_stock = []
        @anchovies_stock = []
    end

    def add_fruit(item)
        @fruit_stock.push(item)
    end

    def add_rice(item)
        @rice_stock.push(item)
    end

    def add_vacuum(item)
        @vacuumcleaner_stock.push(item)
    end

    def add_anchovies(item)
        @anchovies_stock.push(item)
    end

    def stock_panel
        puts "There are #{@fruit_stock.size} units of orange juice and bananas in stock"
        puts "There are #{@rice_stock.size} rice packets in stock"
        puts "There are #{@vacuumcleaner_stock.size} vacuum cleaner units in stock"
        puts "There are #{@anchovies_stock.size} units of anchovies in stock"
    end

end

madrid = Shop.new
5.times{madrid.add_fruit(Fruit.new)}
12.times{madrid.add_fruit(Fruit.new)}
20.times{madrid.add_rice(Rice.new)}
5.times{madrid.add_vacuum(VacuumCleaner.new)}
17.times{madrid.add_anchovies(Anchovies.new)}

puts madrid.stock_panel

my_cart = ShoppingCart.new
5.times {my_cart.add_items(Fruit.new)}
10.times {my_cart.add_items(Rice.new)}
my_cart.add_items(VacuumCleaner.new)
13.times {my_cart.add_items(Anchovies.new)}

puts my_cart.calculate_total