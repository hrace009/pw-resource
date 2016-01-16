class ProjectilesController < ApplicationController
  before_action :set_projectile, only: [:show, :edit, :update, :destroy]

  # GET /projectiles
  # GET /projectiles.json
  def index
    @projectiles = Projectile.all
  end

  # GET /projectiles/1
  # GET /projectiles/1.json
  def show
  end

  # GET /projectiles/new
  def new
    @projectile = Projectile.new
  end

  # GET /projectiles/1/edit
  def edit
  end

  # POST /projectiles
  # POST /projectiles.json
  def create
    @projectile = Projectile.new(projectile_params)

    respond_to do |format|
      if @projectile.save
        format.html { redirect_to @projectile, notice: 'Projectile was successfully created.' }
        format.json { render :show, status: :created, location: @projectile }
      else
        format.html { render :new }
        format.json { render json: @projectile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projectiles/1
  # PATCH/PUT /projectiles/1.json
  def update
    respond_to do |format|
      if @projectile.update(projectile_params)
        format.html { redirect_to @projectile, notice: 'Projectile was successfully updated.' }
        format.json { render :show, status: :ok, location: @projectile }
      else
        format.html { render :edit }
        format.json { render json: @projectile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projectiles/1
  # DELETE /projectiles/1.json
  def destroy
    @projectile.destroy
    respond_to do |format|
      format.html { redirect_to projectiles_url, notice: 'Projectile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projectile
      @projectile = Projectile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projectile_params
      params[:projectile]
    end
end
