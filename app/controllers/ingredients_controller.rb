class IngredientsController < ApplicationController

before_action :set_ingredient, only: [:show, :edit, :update, :destroy]


  def index
    @ingredients = Ingredient.all
  end

 
  def show
  	
  end

  def new
    @ingredient = Ingredient.new
  end

  
  def create

    @recipes = Unirest.get("http://api.yummly.com/v1/api/recipes?_app_id=b1e4db59&_app_key=4cee9fd1d4c6567ec306fd37ad81b90f&q=paleo&maxResult=50&start=10&requirePitcures=true").body["matches"]
    @ingredients = @recipes.each do |recipe|
      recipe["ingredients"].each do |ingredient|
        Ingredient.create(
        name: ingredient
      )
      end
    end

  end
  #   @ingredient = Ingredient.new(ingredient_params)

  #   respond_to do |format|
  #     if @ingredient.save
  #       format.html { redirect_to @ingredient, notice: 'Ingredient was successfully created.' }
  #       format.json { render :show, status: :created, location: @ingredient }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @ingredient.errors, status: :unprocessable_entity }
  #     end
  #   end
  

 
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
      params.require(:ingredient).permit(:name)
    end
end

