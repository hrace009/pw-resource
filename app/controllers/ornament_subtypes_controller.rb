class OrnamentSubtypesController < ApplicationController
  before_action :set_ornament_subtype, only: [:show, :edit, :update, :destroy]

  # GET /ornament_subtypes
  # GET /ornament_subtypes.json
  def index
    @ornament_subtypes = OrnamentSubtype.all
  end

  # GET /ornament_subtypes/1
  # GET /ornament_subtypes/1.json
  def show
  end

  # GET /ornament_subtypes/new
  def new
    @ornament_subtype = OrnamentSubtype.new
  end

  # GET /ornament_subtypes/1/edit
  def edit
  end

  # POST /ornament_subtypes
  # POST /ornament_subtypes.json
  def create
    @ornament_subtype = OrnamentSubtype.new(ornament_subtype_params)

    respond_to do |format|
      if @ornament_subtype.save
        format.html { redirect_to @ornament_subtype, notice: 'Ornament subtype was successfully created.' }
        format.json { render :show, status: :created, location: @ornament_subtype }
      else
        format.html { render :new }
        format.json { render json: @ornament_subtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ornament_subtypes/1
  # PATCH/PUT /ornament_subtypes/1.json
  def update
    respond_to do |format|
      if @ornament_subtype.update(ornament_subtype_params)
        format.html { redirect_to @ornament_subtype, notice: 'Ornament subtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @ornament_subtype }
      else
        format.html { render :edit }
        format.json { render json: @ornament_subtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ornament_subtypes/1
  # DELETE /ornament_subtypes/1.json
  def destroy
    @ornament_subtype.destroy
    respond_to do |format|
      format.html { redirect_to ornament_subtypes_url, notice: 'Ornament subtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ornament_subtype
      @ornament_subtype = OrnamentSubtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ornament_subtype_params
      params[:ornament_subtype]
    end
end
