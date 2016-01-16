class PotionTypesController < ApplicationController
  before_action :set_potion_type, only: [:show, :edit, :update, :destroy]

  # GET /potion_types
  # GET /potion_types.json
  def index
    @potion_types = PotionType.all
  end

  # GET /potion_types/1
  # GET /potion_types/1.json
  def show
  end

  # GET /potion_types/new
  def new
    @potion_type = PotionType.new
  end

  # GET /potion_types/1/edit
  def edit
  end

  # POST /potion_types
  # POST /potion_types.json
  def create
    @potion_type = PotionType.new(potion_type_params)

    respond_to do |format|
      if @potion_type.save
        format.html { redirect_to @potion_type, notice: 'Potion type was successfully created.' }
        format.json { render :show, status: :created, location: @potion_type }
      else
        format.html { render :new }
        format.json { render json: @potion_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /potion_types/1
  # PATCH/PUT /potion_types/1.json
  def update
    respond_to do |format|
      if @potion_type.update(potion_type_params)
        format.html { redirect_to @potion_type, notice: 'Potion type was successfully updated.' }
        format.json { render :show, status: :ok, location: @potion_type }
      else
        format.html { render :edit }
        format.json { render json: @potion_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /potion_types/1
  # DELETE /potion_types/1.json
  def destroy
    @potion_type.destroy
    respond_to do |format|
      format.html { redirect_to potion_types_url, notice: 'Potion type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_potion_type
      @potion_type = PotionType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def potion_type_params
      params[:potion_type]
    end
end
