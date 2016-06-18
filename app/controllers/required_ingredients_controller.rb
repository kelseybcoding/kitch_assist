class RequiredIngredientsController < ApplicationController
  def create
  	RequiredIngredient.create(
  		ingredient_id = params[:ingredient_id],
  		recipe_id = params[:recipe_id],
  		quantity = params[:quantity],
  		units = params[:units]
  		)
  end
end
