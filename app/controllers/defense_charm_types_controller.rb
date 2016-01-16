class DefenseCharmTypesController < ApplicationController
  before_action :set_defense_charm_type, only: [:show, :edit, :update, :destroy]

  # GET /defense_charm_types
  # GET /defense_charm_types.json
  def index
    @defense_charm_types = DefenseCharmType.all
  end

  # GET /defense_charm_types/1
  # GET /defense_charm_types/1.json
  def show
  end

  # GET /defense_charm_types/new
  def new
    @defense_charm_type = DefenseCharmType.new
  end

  # GET /defense_charm_types/1/edit
  def edit
  end

  # POST /defense_charm_types
  # POST /defense_charm_types.json
  def create
    @defense_charm_type = DefenseCharmType.new(defense_charm_type_params)

    respond_to do |format|
      if @defense_charm_type.save
        format.html { redirect_to @defense_charm_type, notice: 'Defense charm type was successfully created.' }
        format.json { render :show, status: :created, location: @defense_charm_type }
      else
        format.html { render :new }
        format.json { render json: @defense_charm_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /defense_charm_types/1
  # PATCH/PUT /defense_charm_types/1.json
  def update
    respond_to do |format|
      if @defense_charm_type.update(defense_charm_type_params)
        format.html { redirect_to @defense_charm_type, notice: 'Defense charm type was successfully updated.' }
        format.json { render :show, status: :ok, location: @defense_charm_type }
      else
        format.html { render :edit }
        format.json { render json: @defense_charm_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /defense_charm_types/1
  # DELETE /defense_charm_types/1.json
  def destroy
    @defense_charm_type.destroy
    respond_to do |format|
      format.html { redirect_to defense_charm_types_url, notice: 'Defense charm type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_defense_charm_type
      @defense_charm_type = DefenseCharmType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def defense_charm_type_params
      params[:defense_charm_type]
    end
end
