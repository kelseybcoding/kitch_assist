class Api::V1::PantryItemsController < ApplicationController
	def index
		@pantry_items = PantryItem.all
	end

	def show
		@pantry_item = PantryItem.find(params[:id])
	end

	def create
		@pantry_item = PantryItem.new(
			ingredient_id: params["ingredient_id"],
			member_id: params["current_member_id"]
			quantity: params["quantity"],
			units: params["units"]
			)

		if @pantry_item.save
			render :index
		else
			render json: { errors: @pantry_item.errors.full_messages }, status: 422
		end
	end

end
