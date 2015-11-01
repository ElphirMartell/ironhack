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
attr_reader :item, :stock, :fruit_stock
    def initialize
        @stock = []

    end

=begin si quiero que funcione subiendo montones de productos tendré que crear un array fuera
    def add_products(items)
        items.each do |item|
        @stock << item
        end
    end
=end
    def add_product(item)
        @stock << item
    end

    def view_stock
        @fruit_stock = @stock.select{|item| item.class == Fruit}
        puts "There are #{@fruit_stock.length} units of orange juice and bananas in stock"
        @rice_stock = @stock.select{|item| item.class == Rice}
        puts "There are #{@rice_stock.length} rice packets in stock"
        @vacuumcleaner_stock = @stock.select{|item| item.class == VacuumCleaner}
        puts "There are #{@vacuumcleaner_stock.length} vacuum cleaner units in stock"
        @anchovies_stock = @stock.select{|item| item.class == Anchovies}
        puts "There are #{@anchovies_stock.length} units of anchovies in stock"  
    end

end


madrid = Shop.new
5.times{madrid.add_product(Fruit.new)}
12.times{madrid.add_product(Fruit.new)}
20.times{madrid.add_product(Rice.new)}
madrid.add_product(VacuumCleaner.new)
17.times{madrid.add_product(Anchovies.new)}

puts madrid.view_stock
puts "Your stock is currently #{madrid.stock.length}"

my_cart = ShoppingCart.new
5.times {my_cart.add_items(Fruit.new)}
10.times {my_cart.add_items(Rice.new)}
my_cart.add_items(VacuumCleaner.new)
13.times {my_cart.add_items(Anchovies.new)}

puts my_cart.calculate_total


