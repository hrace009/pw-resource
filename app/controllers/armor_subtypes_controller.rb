class ArmorSubtypesController < ApplicationController
  before_action :set_armor_subtype, only: [:show, :edit, :update, :destroy]

  # GET /armor_subtypes
  # GET /armor_subtypes.json
  def index
    @armor_subtypes = ArmorSubtype.all
  end

  # GET /armor_subtypes/1
  # GET /armor_subtypes/1.json
  def show
  end

  # GET /armor_subtypes/new
  def new
    @armor_subtype = ArmorSubtype.new
  end

  # GET /armor_subtypes/1/edit
  def edit
  end

  # POST /armor_subtypes
  # POST /armor_subtypes.json
  def create
    @armor_subtype = ArmorSubtype.new(armor_subtype_params)

    respond_to do |format|
      if @armor_subtype.save
        format.html { redirect_to @armor_subtype, notice: 'Armor subtype was successfully created.' }
        format.json { render :show, status: :created, location: @armor_subtype }
      else
        format.html { render :new }
        format.json { render json: @armor_subtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /armor_subtypes/1
  # PATCH/PUT /armor_subtypes/1.json
  def update
    respond_to do |format|
      if @armor_subtype.update(armor_subtype_params)
        format.html { redirect_to @armor_subtype, notice: 'Armor subtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @armor_subtype }
      else
        format.html { render :edit }
        format.json { render json: @armor_subtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /armor_subtypes/1
  # DELETE /armor_subtypes/1.json
  def destroy
    @armor_subtype.destroy
    respond_to do |format|
      format.html { redirect_to armor_subtypes_url, notice: 'Armor subtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_armor_subtype
      @armor_subtype = ArmorSubtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def armor_subtype_params
      params[:armor_subtype]
    end
end
