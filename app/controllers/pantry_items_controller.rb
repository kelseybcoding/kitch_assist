class PantryItemsController < ApplicationController

	def index
		@pantry_items = PantryItem.all
	end

  def create
  	pantry_item = PantryItem.create(
  		ingredient_id: params[:ingredient_id],
      member_id: params[:current_member_id],
  		quantity: params[:quantity],
  		units: params[:units]
  		)
  	flash[:notice] = "Item Added to Your Pantry"
  	redirect_to '/pantry_items'

  	end
end
