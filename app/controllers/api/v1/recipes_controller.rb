class Api::V1::RecipesController < ApplicationController

	
	def index
		
	end

	def search
		recipes = []
		selected_ids = params[:pantry_ids]
		selected_ids.split(",").each do | pantry_id |
			recipes << Ingredient.find(pantry_id.to_i).recipes
		end
		@recipes = recipes.flatten.uniq
		render :index
	end
end