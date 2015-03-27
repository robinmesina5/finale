class TreeRolesController < ApplicationController
  before_action :set_tree_role, only: [:show, :edit, :update, :destroy]

  # GET /tree_roles
  # GET /tree_roles.json
  def index
    @tree_roles = TreeRole.all
  end

  # GET /tree_roles/1
  # GET /tree_roles/1.json
  def show
  end

  # GET /tree_roles/new
  def new
    @tree_role = TreeRole.new
  end

  # GET /tree_roles/1/edit
  def edit
  end

  # POST /tree_roles
  # POST /tree_roles.json
  def create
    @tree_role = TreeRole.new(tree_role_params)

    respond_to do |format|
      if @tree_role.save
        format.html { redirect_to @tree_role, notice: 'Tree role was successfully created.' }
        format.json { render :show, status: :created, location: @tree_role }
      else
        format.html { render :new }
        format.json { render json: @tree_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tree_roles/1
  # PATCH/PUT /tree_roles/1.json
  def update
    respond_to do |format|
      if @tree_role.update(tree_role_params)
        format.html { redirect_to @tree_role, notice: 'Tree role was successfully updated.' }
        format.json { render :show, status: :ok, location: @tree_role }
      else
        format.html { render :edit }
        format.json { render json: @tree_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tree_roles/1
  # DELETE /tree_roles/1.json
  def destroy
    @tree_role.destroy
    respond_to do |format|
      format.html { redirect_to tree_roles_url, notice: 'Tree role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tree_role
      @tree_role = TreeRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tree_role_params
      params.require(:tree_role).permit(:family_id, :user_id, :role)
    end
end
