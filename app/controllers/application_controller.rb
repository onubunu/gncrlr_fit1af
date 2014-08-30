# encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

	private
	
	def current_cart
    return Cart.find(session[:cart_id])
  	rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
    return cart
	end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  helper_method :current_user

end
