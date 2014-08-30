# encoding: utf-8
class Netz < ActiveRecord::Base
  attr_accessible :n_comment, :n_logo_url, :n_name
  validates :n_comment, :n_logo_url, :n_name, :presence => true
  has_many :tariffs
end
