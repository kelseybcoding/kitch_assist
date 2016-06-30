class RecipesController < ApplicationController
  # before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  
  # GET /recipes
  # GET /recipes.json
  def index
    # @recipes = Unirest.get("http://api.yummly.com/v1/api/recipes?_app_id=b1e4db59&_app_key=4cee9fd1d4c6567ec306fd37ad81b90f&q=paleo&maxResult=10&start=10&requirePitcures=true").body["matches"]
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
    
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
  
  # def create

  #   @recipes = Unirest.get("http://api.yummly.com/v1/api/recipe/recipe-id?_app_id=b1e4db59&_app_key=4cee9fd1d4c6567ec306fd37ad81b90f&q=paleo&maxResult=10&start=10&requirePitcures=true").body["matches"]
  #   @recipes.each do |recipe|
  #     Recipe.create(
  #       attributes: attributes,
  #       source_id: id,
  #       recipe_name: recipeName,
  #       small_image_urls: smallImageUrls,
  #       source_display_name: sourceDisplayName,
  #       total_time: totalTimeInSeconds,
  #       recipe_name: recipeName,
  #       criteria: criteria
  #       )

  #   end
  # end
    # @recipe = Recipe.new(recipe_params)

    # respond_to do |format|
    #   if @recipe.save
    #     format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
    #     format.json { render :show, status: :created, location: @recipe }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @recipe.errors, status: :unprocessable_entity }
    #   end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  # def update
  #   respond_to do |format|
  #     if @recipe.update(recipe_params)
  #       format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @recipe }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @recipe.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  def update
      recipe = Recipe.find_by(id: params[:id])
      
      recipe.update(
        title: params[:title],
        servings: params[:servings],
        prep_time: params[:prep_time],
        cook_time: params[:cook_time],
        ) 

      flash[:success] = "Recipe Updated"
      redirect_to "/recipes/#{recipe.id}"
    end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_recipe
  #     @recipe = Recipe.find(params[:id])
  #   end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def recipe_params
    #   params.require(:recipe).permit(:title, :servings, :prep_time, :cook_time, :instructions)
    # end
