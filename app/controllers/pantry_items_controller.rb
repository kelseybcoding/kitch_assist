class PantryItemsController < ApplicationController

before_filter :authorize

	def index
    @pantry_items = PantryItem.all

		if current_member
      @pantry = current_member.pantry_items
    else
      flash[:info] = "Login to add items to your pantry"
      redirect_to '/login'
    end
	end

  def new
    @pantry_item = PantryItem.new
  end

  def create
  	@pantry_item = PantryItem.create(
  		ingredient_id: params[:ingredient_id],
      quantity: params[:quantity],
      units: params[:units],
      member_id: params[:current_member_id]
  		)
  	flash[:notice] = "Item Added to Your Pantry"
  	redirect_to '/pantry_items'

  	end
end
