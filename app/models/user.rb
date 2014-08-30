# encoding: utf-8
class User < ActiveRecord::Base
  attr_accessible :bank, :bankaccount, :bankzip, :birth_date, :city, :email, :password, :password_confirmation , :prename, :street, :surname, :title, :user_id, :zip
  has_secure_password
  validates :bank, :bankaccount, :bankzip, :birth_date, :city, :prename, :street, :surname, :title, :zip, :presence => true
  validates :email,
  	format: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
	uniqueness: true
  has_many :orders
end
