require 'json'

class Till

  attr_reader :items

  def initialize
    @items = []
  end

  def add item
    items << item
  end

  def total
    total = 0

    file = File.read 'shop.json'
    data_hash = JSON.parse(file).first["prices"].first

    items.each do |item|
      if item == :cafe_latte
        total += data_hash["Cafe Latte"]
      end
    end

    return total
  end

end