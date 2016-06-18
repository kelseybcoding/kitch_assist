class RequiredIngredientsController < ApplicationController
  def create
  	required_ingredient = RequiredIngredient.create(
  		ingredient_id: params[:ingredient_id],
  		recipe_id: params[:recipe_id],
  		quantity: params[:quantity],
  		units: params[:units]
  		)
  	flash[:notice] = "Required Ingredient Created"
  	redirect_to '/recipes'

  end
end
