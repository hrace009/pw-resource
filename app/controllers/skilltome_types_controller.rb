class SkilltomeTypesController < ApplicationController
  before_action :set_skilltome_type, only: [:show, :edit, :update, :destroy]

  # GET /skilltome_types
  # GET /skilltome_types.json
  def index
    @skilltome_types = SkilltomeType.all
  end

  # GET /skilltome_types/1
  # GET /skilltome_types/1.json
  def show
  end

  # GET /skilltome_types/new
  def new
    @skilltome_type = SkilltomeType.new
  end

  # GET /skilltome_types/1/edit
  def edit
  end

  # POST /skilltome_types
  # POST /skilltome_types.json
  def create
    @skilltome_type = SkilltomeType.new(skilltome_type_params)

    respond_to do |format|
      if @skilltome_type.save
        format.html { redirect_to @skilltome_type, notice: 'Skilltome type was successfully created.' }
        format.json { render :show, status: :created, location: @skilltome_type }
      else
        format.html { render :new }
        format.json { render json: @skilltome_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skilltome_types/1
  # PATCH/PUT /skilltome_types/1.json
  def update
    respond_to do |format|
      if @skilltome_type.update(skilltome_type_params)
        format.html { redirect_to @skilltome_type, notice: 'Skilltome type was successfully updated.' }
        format.json { render :show, status: :ok, location: @skilltome_type }
      else
        format.html { render :edit }
        format.json { render json: @skilltome_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skilltome_types/1
  # DELETE /skilltome_types/1.json
  def destroy
    @skilltome_type.destroy
    respond_to do |format|
      format.html { redirect_to skilltome_types_url, notice: 'Skilltome type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skilltome_type
      @skilltome_type = SkilltomeType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skilltome_type_params
      params[:skilltome_type]
    end
end
