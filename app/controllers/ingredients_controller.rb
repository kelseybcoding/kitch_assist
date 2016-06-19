class IngredientsController < ApplicationController

before_action :set_ingredient, only: [:show, :edit, :update, :destroy]


  def index
    @ingredients = Ingredient.all
  end

 
  def show
  	# @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  
  def edit
   
  end

  
  def create
    @ingredient = Ingredient.new(ingredient_params)

    respond_to do |format|
      if @ingredient.save
        format.html { redirect_to @ingredient, notice: 'Ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @ingredient }
      else
        format.html { render :new }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def update
    respond_to do |format|
      if @ingredient.update(ingredient_params)
        format.html { redirect_to @ingredient, notice: 'Ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingredient }
      else
        format.html { render :edit }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # def update
  #     recipe = Recipe.find_by(id: params[:id])
      
  #     recipe.update(
  #       title: params[:title],
  #       servings: params[:servings],
  #       prep_time: params[:prep_time],
  #       cook_time: params[:cook_time],
  #       ) 

  #     flash[:success] = "Recipe Updated"
  #     redirect_to "/recipes/#{recipe.id}"
  #   end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @ingredient.destroy
    respond_to do |format|
      format.html { redirect_to ingredients_url, notice: 'Ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient
      @ingredient = Ingredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingredient_params
      params.require(:ingredient).permit(:name, :description)
    end
end

