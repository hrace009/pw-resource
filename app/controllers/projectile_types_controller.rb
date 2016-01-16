class ProjectileTypesController < ApplicationController
  before_action :set_projectile_type, only: [:show, :edit, :update, :destroy]

  # GET /projectile_types
  # GET /projectile_types.json
  def index
    @projectile_types = ProjectileType.all
  end

  # GET /projectile_types/1
  # GET /projectile_types/1.json
  def show
  end

  # GET /projectile_types/new
  def new
    @projectile_type = ProjectileType.new
  end

  # GET /projectile_types/1/edit
  def edit
  end

  # POST /projectile_types
  # POST /projectile_types.json
  def create
    @projectile_type = ProjectileType.new(projectile_type_params)

    respond_to do |format|
      if @projectile_type.save
        format.html { redirect_to @projectile_type, notice: 'Projectile type was successfully created.' }
        format.json { render :show, status: :created, location: @projectile_type }
      else
        format.html { render :new }
        format.json { render json: @projectile_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projectile_types/1
  # PATCH/PUT /projectile_types/1.json
  def update
    respond_to do |format|
      if @projectile_type.update(projectile_type_params)
        format.html { redirect_to @projectile_type, notice: 'Projectile type was successfully updated.' }
        format.json { render :show, status: :ok, location: @projectile_type }
      else
        format.html { render :edit }
        format.json { render json: @projectile_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projectile_types/1
  # DELETE /projectile_types/1.json
  def destroy
    @projectile_type.destroy
    respond_to do |format|
      format.html { redirect_to projectile_types_url, notice: 'Projectile type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projectile_type
      @projectile_type = ProjectileType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projectile_type_params
      params[:projectile_type]
    end
end
