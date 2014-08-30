# encoding: utf-8
class SessionsController < ApplicationController

  def new
    @cart = current_cart
  end
    
  def create
    user=User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Sie haben sich erfolgreich angemeldet!"
    else
      flash.now.alert = "Email oder Passwort ist ungültig."
      render "new"
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice:"Sie haben sich erfolgreich abgemeldet!"
  end 

end
