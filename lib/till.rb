require 'json'

class Till

  attr_reader :items, :change_given

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

  def pay ammount
    @change_given = ammount - total
  end

  def tax
    tax = total * 0.0864
    tax.round 2
  end

end