# encoding: utf-8
class Order < ActiveRecord::Base
  attr_accessible :agbs, :bank, :bankaccount, :bankzip, :o_date, :o_price, :order_no, :phone_id, :tariff_id, :user_id
  validates :agbs, :presence => { :message => ": Die Allgemeinen Geschäftsbedingungen müssen akzeptiert werden." }
  has_many :line_items, dependent: :destroy
  belongs_to :user

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price}
  end
end
