# encoding: utf-8
class Phone < ActiveRecord::Base
  attr_accessible :p_brand, :p_comment, :p_image_url, :p_price, :p_typ
  validates :p_brand, :p_comment, :p_image_url, :p_price, :p_typ, :presence => true
end
