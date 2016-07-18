class Api::V1::PantryItemsController < ApplicationController
	def index
		@pantry_items = PantryItem.all
	end

	def new
		
	end

	def create

		ingredient = Ingredient.find_by(name: params[:ingredient_id])
		@pantry_item = PantryItem.new(
			ingredient_id: ingredient.id,
			member_id: params["current_member_id"],
			quantity: params["quantity"],
			units: params["units"]
			)

		if @pantry_item.save
			render :show
		else
			render json: { errors: @pantry_item.errors.full_messages }, status: 422
		end
	end

	def show
		@pantry_item = PantryItem.find(params[:id])
	end

	def edit
		
	end

	# def update
	# 	ingredient = Ingredient.find_by(name: params[:ingredient_id])
	# 	@pantry_item = PantryItem.update(
	# 		ingredient_id: ingredient.id,
	# 		member_id: params["current_member_id"],
	# 		quantity: params["quantity"],
	# 		units: params["units"]
	# 		)
	# end

	def destroy
		@pantry_item = PantryItem.find_by(id: params[:id])
		@pantry_item.destroy
	end
end
