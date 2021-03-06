class RecipesController < ApplicationController
  # before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  
  # GET /recipes
  # GET /recipes.json
  def index
    sort_attribute = params[:sort]
    search_term = params[:search_term]

    if sort_attribute
      @recipes = Recipe.order(sort_attribute)
    else
      @recipes = Recipe.all
    end

    if search_term
      @recipes = @recipes.where("title ILIKE :search_term OR description ILIKE :search_term OR instructions ILIKE :search_term", search_term: "%#{search_term}%")
    end
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
    @recipe = Recipe.find(params[:id])
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
  end

  # GET /recipes/1/edit
  def edit
   @ingredients = Ingredient.all
   @recipe = Recipe.find_by(id: params[:id])
  end

  # POST /recipes
  # POST /recipes.json
  

  # GET /recipes/new
  def new
  end

#   # POST /recipes
#   # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

#   # PATCH/PUT /recipes/1
#   # PATCH/PUT /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe tool was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

#   # DELETE /recipes/1
#   # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe tool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
#     # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

#     # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:title, :description, :yield_number, :yield_name, :total_time, :instructions)
    end
end

