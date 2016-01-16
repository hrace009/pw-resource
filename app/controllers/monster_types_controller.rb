class MonsterTypesController < ApplicationController
  before_action :set_monster_type, only: [:show, :edit, :update, :destroy]

  # GET /monster_types
  # GET /monster_types.json
  def index
    @monster_types = MonsterType.all
  end

  # GET /monster_types/1
  # GET /monster_types/1.json
  def show
  end

  # GET /monster_types/new
  def new
    @monster_type = MonsterType.new
  end

  # GET /monster_types/1/edit
  def edit
  end

  # POST /monster_types
  # POST /monster_types.json
  def create
    @monster_type = MonsterType.new(monster_type_params)

    respond_to do |format|
      if @monster_type.save
        format.html { redirect_to @monster_type, notice: 'Monster type was successfully created.' }
        format.json { render :show, status: :created, location: @monster_type }
      else
        format.html { render :new }
        format.json { render json: @monster_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monster_types/1
  # PATCH/PUT /monster_types/1.json
  def update
    respond_to do |format|
      if @monster_type.update(monster_type_params)
        format.html { redirect_to @monster_type, notice: 'Monster type was successfully updated.' }
        format.json { render :show, status: :ok, location: @monster_type }
      else
        format.html { render :edit }
        format.json { render json: @monster_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monster_types/1
  # DELETE /monster_types/1.json
  def destroy
    @monster_type.destroy
    respond_to do |format|
      format.html { redirect_to monster_types_url, notice: 'Monster type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monster_type
      @monster_type = MonsterType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monster_type_params
      params[:monster_type]
    end
end
