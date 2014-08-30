# encoding: utf-8
class Tariff < ActiveRecord::Base
  attr_accessible :netz_id, :t_comment, :t_commission, :t_costs, :t_info, :t_name, :t_profit
  validates :netz_id, :t_comment, :t_commission, :t_costs, :t_name, :t_profit, :presence => true
  belongs_to :netz

  def v_price
    t_commission - t_profit
  end
end
