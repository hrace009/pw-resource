class EquipmentAddonsController < ApplicationController
  before_action :set_equipment_addon, only: [:show, :edit, :update, :destroy]

  # GET /equipment_addons
  # GET /equipment_addons.json
  def index
    @equipment_addons = EquipmentAddon.paginate(page: params[:page], per_page: 20)
  end

  # GET /equipment_addons/1
  # GET /equipment_addons/1.json
  def show
  end

  # GET /equipment_addons/new
  def new
    @equipment_addon = EquipmentAddon.new
  end

  # GET /equipment_addons/1/edit
  def edit
  end

  # POST /equipment_addons
  # POST /equipment_addons.json
  def create
    @equipment_addon = EquipmentAddon.new(equipment_addon_params)

    respond_to do |format|
      if @equipment_addon.save
        format.html { redirect_to @equipment_addon, notice: 'Equipment addon was successfully created.' }
        format.json { render :show, status: :created, location: @equipment_addon }
      else
        format.html { render :new }
        format.json { render json: @equipment_addon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment_addons/1
  # PATCH/PUT /equipment_addons/1.json
  def update
    respond_to do |format|
      if @equipment_addon.update(equipment_addon_params)
        format.html { redirect_to @equipment_addon, notice: 'Equipment addon was successfully updated.' }
        format.json { render :show, status: :ok, location: @equipment_addon }
      else
        format.html { render :edit }
        format.json { render json: @equipment_addon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment_addons/1
  # DELETE /equipment_addons/1.json
  def destroy
    @equipment_addon.destroy
    respond_to do |format|
      format.html { redirect_to equipment_addons_url, notice: 'Equipment addon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipment_addon
      @equipment_addon = EquipmentAddon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipment_addon_params
      params[:equipment_addon]
    end
end
