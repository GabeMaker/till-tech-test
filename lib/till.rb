require 'json'
file = File.read('shop.json')
PRICES = JSON.parse(file).first["prices"].first

class Till

  def order item
    @order = item
  end

  def total
    if @order == :cafelatte
      PRICES["Cafe Latte"]
    else
      PRICES["Cappucino"]
    end
  end

end