class PantryItemsController < ApplicationController

before_filter :authorize

	def index
    @pantry_items = PantryItem.all

		if current_member
      @pantry_items = current_member.pantry_items
    else
      flash[:info] = "Login to add items to your pantry"
      redirect_to '/login'
    end
	end

  def new
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

    def edit
      @pantry_item = PantryItem.find_by(id: params[:id])
    end

    def update
      pantry_item = PantryItem.find_by(id: params[:id])

      pantry_item.update(
        ingredient_id: params[:ingredient_id],
        quantity: params[:quantity],
        units: params[:units],
        member_id: params[:current_member_id]
      )

      flash[:success] = "Pantry Item Updated!"
      redirect_to "/pantry_items"
    end

    def destroy
      pantry_item = PantryItem.find(params[:id])
      pantry_item.destroy

      flash[:warning] = "Item Removed From Your Pantry!"
      redirect_to "/pantry_items"
    end
end
