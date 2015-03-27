class FamilyTreesController < ApplicationController
  before_action :set_family_tree, only: [:show, :edit, :update, :destroy]

  # GET /family_trees
  # GET /family_trees.json
  def index
    respond_to do |format|
      format.html
      format.json { 
        family_trees = FamilyTree.all
        render :json => @family_trees
      }
    end
  end

  # GET /family_trees/1
  # GET /family_trees/1.json
  def show
    @family_tree = FamilyTree.find(params[:id])
  end

  # GET /family_trees/new
  def new
    @family_tree = FamilyTree.new
  end

  # GET /family_trees/1/edit
  def edit
  end

  # POST /family_trees
  # POST /family_trees.json
  def create
    @family_tree = FamilyTree.new(family_tree_params)

    respond_to do |format|
      if @family_tree.save
        format.html { redirect_to @family_tree, notice: 'Family tree was successfully created.' }
        format.json { render :show, status: :created, location: @family_tree }
      else
        format.html { render :new }
        format.json { render json: @family_tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /family_trees/1
  # PATCH/PUT /family_trees/1.json
  def update
    respond_to do |format|
      if @family_tree.update(family_tree_params)
        format.html { redirect_to @family_tree, notice: 'Family tree was successfully updated.' }
        format.json { render :show, status: :ok, location: @family_tree }
      else
        format.html { render :edit }
        format.json { render json: @family_tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /family_trees/1
  # DELETE /family_trees/1.json
  def destroy
    @family_tree.destroy
    respond_to do |format|
      format.html { redirect_to family_trees_url, notice: 'Family tree was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_family_tree
      @family_tree = FamilyTree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def family_tree_params
      params.require(:family_tree).permit(:name, :user_id, :relative_id)
    end
  end
