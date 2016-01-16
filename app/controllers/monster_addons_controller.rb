class MonsterAddonsController < ApplicationController
  before_action :set_monster_addon, only: [:show, :edit, :update, :destroy]

  # GET /monster_addons
  # GET /monster_addons.json
  def index
    @monster_addons = MonsterAddon.all
  end

  # GET /monster_addons/1
  # GET /monster_addons/1.json
  def show
  end

  # GET /monster_addons/new
  def new
    @monster_addon = MonsterAddon.new
  end

  # GET /monster_addons/1/edit
  def edit
  end

  # POST /monster_addons
  # POST /monster_addons.json
  def create
    @monster_addon = MonsterAddon.new(monster_addon_params)

    respond_to do |format|
      if @monster_addon.save
        format.html { redirect_to @monster_addon, notice: 'Monster addon was successfully created.' }
        format.json { render :show, status: :created, location: @monster_addon }
      else
        format.html { render :new }
        format.json { render json: @monster_addon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monster_addons/1
  # PATCH/PUT /monster_addons/1.json
  def update
    respond_to do |format|
      if @monster_addon.update(monster_addon_params)
        format.html { redirect_to @monster_addon, notice: 'Monster addon was successfully updated.' }
        format.json { render :show, status: :ok, location: @monster_addon }
      else
        format.html { render :edit }
        format.json { render json: @monster_addon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monster_addons/1
  # DELETE /monster_addons/1.json
  def destroy
    @monster_addon.destroy
    respond_to do |format|
      format.html { redirect_to monster_addons_url, notice: 'Monster addon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monster_addon
      @monster_addon = MonsterAddon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monster_addon_params
      params[:monster_addon]
    end
end
