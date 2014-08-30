# encoding: utf-8
class NetzsController < ApplicationController
  # GET /nets
  # GET /nets.json
  def index
    @netzs = Netz.all
    @cart = current_cart
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @netzs }
    end
  end

  # GET /nets/1
  # GET /nets/1.json
  def show
    @netz = Netz.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @netz }
    end
  end

  # GET /nets/new
  # GET /nets/new.json
  # def new
  #   @net = Net.new

  #   respond_to do |format|
  #     format.html # new.html.erb
  #     format.json { render json: @net }
  #   end
  # end

  # GET /nets/1/edit
  # def edit
  #   @net = Net.find(params[:id])
  # end

  # POST /nets
  # POST /nets.json
  # def create
  #   @net = Net.new(params[:net])

  #   respond_to do |format|
  #     if @net.save
  #       format.html { redirect_to @net, notice: 'Net was successfully created.' }
  #       format.json { render json: @net, status: :created, location: @net }
  #     else
  #       format.html { render action: "new" }
  #       format.json { render json: @net.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PUT /nets/1
  # PUT /nets/1.json
  # def update
  #   @net = Net.find(params[:id])

  #   respond_to do |format|
  #     if @net.update_attributes(params[:net])
  #       format.html { redirect_to @net, notice: 'Net was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: "edit" }
  #       format.json { render json: @net.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /nets/1
  # DELETE /nets/1.json
  # def destroy
  #   @net = Net.find(params[:id])
  #   @net.destroy

  #   respond_to do |format|
  #     format.html { redirect_to nets_url }
  #     format.json { head :no_content }
  #   end
  # end
end
