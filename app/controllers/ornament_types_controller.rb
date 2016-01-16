class OrnamentTypesController < ApplicationController
  before_action :set_ornament_type, only: [:show, :edit, :update, :destroy]

  # GET /ornament_types
  # GET /ornament_types.json
  def index
    @ornament_types = OrnamentType.all
  end

  # GET /ornament_types/1
  # GET /ornament_types/1.json
  def show
  end

  # GET /ornament_types/new
  def new
    @ornament_type = OrnamentType.new
  end

  # GET /ornament_types/1/edit
  def edit
  end

  # POST /ornament_types
  # POST /ornament_types.json
  def create
    @ornament_type = OrnamentType.new(ornament_type_params)

    respond_to do |format|
      if @ornament_type.save
        format.html { redirect_to @ornament_type, notice: 'Ornament type was successfully created.' }
        format.json { render :show, status: :created, location: @ornament_type }
      else
        format.html { render :new }
        format.json { render json: @ornament_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ornament_types/1
  # PATCH/PUT /ornament_types/1.json
  def update
    respond_to do |format|
      if @ornament_type.update(ornament_type_params)
        format.html { redirect_to @ornament_type, notice: 'Ornament type was successfully updated.' }
        format.json { render :show, status: :ok, location: @ornament_type }
      else
        format.html { render :edit }
        format.json { render json: @ornament_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ornament_types/1
  # DELETE /ornament_types/1.json
  def destroy
    @ornament_type.destroy
    respond_to do |format|
      format.html { redirect_to ornament_types_url, notice: 'Ornament type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ornament_type
      @ornament_type = OrnamentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ornament_type_params
      params[:ornament_type]
    end
end
