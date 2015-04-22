require 'json'
file = File.read('shop.json')
PRICES = JSON.parse(file).first["prices"].first

class Till

  attr_reader :total
  attr_reader :quantities

  def initialize
    @total = 0
    @quantities = {}
  end

  def order item, quantity=1
    quantity.times { @total += PRICES[item] }
    quantity = quantity + @quantities[item] if @quantities[item] != nil
    @quantities[item] = quantity
  end

  def tax
    (@total * 0.0864).round 2
  end




  def display_lines_demo_method
    itemised = []
    @quantities.each do |item, qty|
      itemised << "#{item}   #{qty} x #{PRICES[item]}"
    end
    puts itemised
  end

end