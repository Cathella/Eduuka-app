class Item < ApplicationRecord
  def profit
    retail_gross = retail_price * quantity
    wholesale_gross = wholesale_price * quantity
    item_profit = retail_gross - wholesale_gross
  end
end
