 class KitchenToolsController < ApplicationController
#   before_action :set_kitchen_tool, only: [:show, :edit, :update, :destroy]
#   before_filter :authorize

#   # GET /kitchen_tools
#   # GET /kitchen_tools.json
#   def index
#     @kitchen_tools = KitchenTool.all
#   end

#   # GET /kitchen_tools/1
#   # GET /kitchen_tools/1.json
#   def show
#   end

#   # GET /kitchen_tools/new
#   def new
#     @kitchen_tool = KitchenTool.new
#   end

#   # GET /kitchen_tools/1/edit
#   def edit
#   end

#   # POST /kitchen_tools
#   # POST /kitchen_tools.json
#   def create
#     @kitchen_tool = KitchenTool.new(kitchen_tool_params)

#     respond_to do |format|
#       if @kitchen_tool.save
#         format.html { redirect_to @kitchen_tool, notice: 'Kitchen tool was successfully created.' }
#         format.json { render :show, status: :created, location: @kitchen_tool }
#       else
#         format.html { render :new }
#         format.json { render json: @kitchen_tool.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PATCH/PUT /kitchen_tools/1
#   # PATCH/PUT /kitchen_tools/1.json
#   def update
#     respond_to do |format|
#       if @kitchen_tool.update(kitchen_tool_params)
#         format.html { redirect_to @kitchen_tool, notice: 'Kitchen tool was successfully updated.' }
#         format.json { render :show, status: :ok, location: @kitchen_tool }
#       else
#         format.html { render :edit }
#         format.json { render json: @kitchen_tool.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /kitchen_tools/1
#   # DELETE /kitchen_tools/1.json
#   def destroy
#     @kitchen_tool.destroy
#     respond_to do |format|
#       format.html { redirect_to kitchen_tools_url, notice: 'Kitchen tool was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_kitchen_tool
#       @kitchen_tool = KitchenTool.find(params[:id])
#     end

#     # Never trust parameters from the scary internet, only allow the white list through.
#     def kitchen_tool_params
#       params.require(:kitchen_tool).permit(:name, :type)
#     end
end
