class WeaponSubtypesController < ApplicationController
  before_action :set_weapon_subtype, only: [:show, :edit, :update, :destroy]

  # GET /weapon_subtypes
  # GET /weapon_subtypes.json
  def index
    @weapon_subtypes = WeaponSubtype.all
  end

  # GET /weapon_subtypes/1
  # GET /weapon_subtypes/1.json
  def show
  end

  # GET /weapon_subtypes/new
  def new
    @weapon_subtype = WeaponSubtype.new
  end

  # GET /weapon_subtypes/1/edit
  def edit
  end

  # POST /weapon_subtypes
  # POST /weapon_subtypes.json
  def create
    @weapon_subtype = WeaponSubtype.new(weapon_subtype_params)

    respond_to do |format|
      if @weapon_subtype.save
        format.html { redirect_to @weapon_subtype, notice: 'Weapon subtype was successfully created.' }
        format.json { render :show, status: :created, location: @weapon_subtype }
      else
        format.html { render :new }
        format.json { render json: @weapon_subtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weapon_subtypes/1
  # PATCH/PUT /weapon_subtypes/1.json
  def update
    respond_to do |format|
      if @weapon_subtype.update(weapon_subtype_params)
        format.html { redirect_to @weapon_subtype, notice: 'Weapon subtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @weapon_subtype }
      else
        format.html { render :edit }
        format.json { render json: @weapon_subtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weapon_subtypes/1
  # DELETE /weapon_subtypes/1.json
  def destroy
    @weapon_subtype.destroy
    respond_to do |format|
      format.html { redirect_to weapon_subtypes_url, notice: 'Weapon subtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weapon_subtype
      @weapon_subtype = WeaponSubtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weapon_subtype_params
      params[:weapon_subtype]
    end
end
