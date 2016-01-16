class MaterialSubtypesController < ApplicationController
  before_action :set_material_subtype, only: [:show, :edit, :update, :destroy]

  # GET /material_subtypes
  # GET /material_subtypes.json
  def index
    @material_subtypes = MaterialSubtype.all
  end

  # GET /material_subtypes/1
  # GET /material_subtypes/1.json
  def show
  end

  # GET /material_subtypes/new
  def new
    @material_subtype = MaterialSubtype.new
  end

  # GET /material_subtypes/1/edit
  def edit
  end

  # POST /material_subtypes
  # POST /material_subtypes.json
  def create
    @material_subtype = MaterialSubtype.new(material_subtype_params)

    respond_to do |format|
      if @material_subtype.save
        format.html { redirect_to @material_subtype, notice: 'Material subtype was successfully created.' }
        format.json { render :show, status: :created, location: @material_subtype }
      else
        format.html { render :new }
        format.json { render json: @material_subtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /material_subtypes/1
  # PATCH/PUT /material_subtypes/1.json
  def update
    respond_to do |format|
      if @material_subtype.update(material_subtype_params)
        format.html { redirect_to @material_subtype, notice: 'Material subtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @material_subtype }
      else
        format.html { render :edit }
        format.json { render json: @material_subtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_subtypes/1
  # DELETE /material_subtypes/1.json
  def destroy
    @material_subtype.destroy
    respond_to do |format|
      format.html { redirect_to material_subtypes_url, notice: 'Material subtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_subtype
      @material_subtype = MaterialSubtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_subtype_params
      params[:material_subtype]
    end
end
