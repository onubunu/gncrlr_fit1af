# encoding: utf-8
class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :phone_id, :tariff_id
  belongs_to :tariff
  belongs_to :cart

  def total_item
    1
  end

  def t_commission
    tariff.t_commission * 1
  end

  def phone
    $phone_id
  end

  def p_price
    phone.p_price
  end

  def total_price
    if tariff.t_commission > (phone.p_price + tariff.t_profit)
      0
    else
      phone.p_price - tariff.t_commission 
    end
  end
end
