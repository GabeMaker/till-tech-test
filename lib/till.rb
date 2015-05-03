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
    items.each { |item| total += data_hash[item] }
    return total
  end

end