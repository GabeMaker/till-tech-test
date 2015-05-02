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
      total += data_hash["Cafe Latte"] if item == :cafe_latte
      total += data_hash["Flat White"] if item == :flat_white
      total += data_hash["Cappucino"] if item == :cappucino
    end

    return total
  end

end