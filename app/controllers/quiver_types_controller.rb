class QuiverTypesController < ApplicationController
  before_action :set_quiver_type, only: [:show, :edit, :update, :destroy]

  # GET /quiver_types
  # GET /quiver_types.json
  def index
    @quiver_types = QuiverType.all
  end

  # GET /quiver_types/1
  # GET /quiver_types/1.json
  def show
  end

  # GET /quiver_types/new
  def new
    @quiver_type = QuiverType.new
  end

  # GET /quiver_types/1/edit
  def edit
  end

  # POST /quiver_types
  # POST /quiver_types.json
  def create
    @quiver_type = QuiverType.new(quiver_type_params)

    respond_to do |format|
      if @quiver_type.save
        format.html { redirect_to @quiver_type, notice: 'Quiver type was successfully created.' }
        format.json { render :show, status: :created, location: @quiver_type }
      else
        format.html { render :new }
        format.json { render json: @quiver_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quiver_types/1
  # PATCH/PUT /quiver_types/1.json
  def update
    respond_to do |format|
      if @quiver_type.update(quiver_type_params)
        format.html { redirect_to @quiver_type, notice: 'Quiver type was successfully updated.' }
        format.json { render :show, status: :ok, location: @quiver_type }
      else
        format.html { render :edit }
        format.json { render json: @quiver_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quiver_types/1
  # DELETE /quiver_types/1.json
  def destroy
    @quiver_type.destroy
    respond_to do |format|
      format.html { redirect_to quiver_types_url, notice: 'Quiver type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiver_type
      @quiver_type = QuiverType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quiver_type_params
      params[:quiver_type]
    end
end
