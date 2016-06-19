class PantryItemsController < ApplicationController

	def index
		pantry_items = PantryItem.all
	end

  	def create
  		pantry_item = PantryItem.create(
  			member_id: params[:member_id],
  			ingredient_id: params[:ingredient_id],
  			quantity: params[:quantity],
  			units: params[:units]
  			)
  		flash[:notice] = "Item Added to Your Pantry"
  		redirect_to '/pantry_items'

  	end
end
