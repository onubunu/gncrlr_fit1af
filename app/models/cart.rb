# encoding: utf-8
class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :line_items, dependent: :destroy

  def add_tariff(tariff_id)
    current_item = line_items.find_by_tariff_id(tariff_id)
    if current_item
    else
      current_item = line_items.build(tariff_id: tariff_id)
    end
    current_item
  end

  def total_item
    line_items.to_a.sum { |item| item.total_item}
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price}
  end
end
