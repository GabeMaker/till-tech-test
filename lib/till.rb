require 'json'
file = File.read('shop.json')
PRICES = JSON.parse(file).first["prices"].first

class Till

  attr_reader :total

  def initialize
    @total = 0
  end

  def order item
    @total += PRICES[item]
  end

end