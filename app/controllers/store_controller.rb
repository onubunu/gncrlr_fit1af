# encoding: utf-8
class StoreController < ApplicationController
	
  def index
    @cart = current_cart
    @netzs = Netz.all
    @phones = Phone.all
		@tariffs = Tariff.all 

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store }
    end
  end
end
