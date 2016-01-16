class PotionSubtypesController < ApplicationController
  before_action :set_potion_subtype, only: [:show, :edit, :update, :destroy]

  # GET /potion_subtypes
  # GET /potion_subtypes.json
  def index
    @potion_subtypes = PotionSubtype.all
  end

  # GET /potion_subtypes/1
  # GET /potion_subtypes/1.json
  def show
  end

  # GET /potion_subtypes/new
  def new
    @potion_subtype = PotionSubtype.new
  end

  # GET /potion_subtypes/1/edit
  def edit
  end

  # POST /potion_subtypes
  # POST /potion_subtypes.json
  def create
    @potion_subtype = PotionSubtype.new(potion_subtype_params)

    respond_to do |format|
      if @potion_subtype.save
        format.html { redirect_to @potion_subtype, notice: 'Potion subtype was successfully created.' }
        format.json { render :show, status: :created, location: @potion_subtype }
      else
        format.html { render :new }
        format.json { render json: @potion_subtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /potion_subtypes/1
  # PATCH/PUT /potion_subtypes/1.json
  def update
    respond_to do |format|
      if @potion_subtype.update(potion_subtype_params)
        format.html { redirect_to @potion_subtype, notice: 'Potion subtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @potion_subtype }
      else
        format.html { render :edit }
        format.json { render json: @potion_subtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /potion_subtypes/1
  # DELETE /potion_subtypes/1.json
  def destroy
    @potion_subtype.destroy
    respond_to do |format|
      format.html { redirect_to potion_subtypes_url, notice: 'Potion subtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_potion_subtype
      @potion_subtype = PotionSubtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def potion_subtype_params
      params[:potion_subtype]
    end
end
