require 'json'
file = File.read('shop.json')
PRICES = JSON.parse(file).first["prices"].first

class Till

  attr_reader :total

  def initialize
    @total = 0
  end

  def order item, quantity=1
    quantity.times do
      @total += PRICES[item]
    end
  end

end