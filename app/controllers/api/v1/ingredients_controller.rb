class Api::V1::IngredientsController < ApplicationController
	def index
		@ingredients = Ingredient.all
	end

	def search
		@ingredients = Ingredient.where("name LIKE ?", "%#{params[:content]}%").limit(20)
		render :index
	end
end