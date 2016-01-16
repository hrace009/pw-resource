class AttackCharmTypesController < ApplicationController
  before_action :set_attack_charm_type, only: [:show, :edit, :update, :destroy]

  # GET /attack_charm_types
  # GET /attack_charm_types.json
  def index
    @attack_charm_types = AttackCharmType.all
  end

  # GET /attack_charm_types/1
  # GET /attack_charm_types/1.json
  def show
  end

  # GET /attack_charm_types/new
  def new
    @attack_charm_type = AttackCharmType.new
  end

  # GET /attack_charm_types/1/edit
  def edit
  end

  # POST /attack_charm_types
  # POST /attack_charm_types.json
  def create
    @attack_charm_type = AttackCharmType.new(attack_charm_type_params)

    respond_to do |format|
      if @attack_charm_type.save
        format.html { redirect_to @attack_charm_type, notice: 'Attack charm type was successfully created.' }
        format.json { render :show, status: :created, location: @attack_charm_type }
      else
        format.html { render :new }
        format.json { render json: @attack_charm_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attack_charm_types/1
  # PATCH/PUT /attack_charm_types/1.json
  def update
    respond_to do |format|
      if @attack_charm_type.update(attack_charm_type_params)
        format.html { redirect_to @attack_charm_type, notice: 'Attack charm type was successfully updated.' }
        format.json { render :show, status: :ok, location: @attack_charm_type }
      else
        format.html { render :edit }
        format.json { render json: @attack_charm_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attack_charm_types/1
  # DELETE /attack_charm_types/1.json
  def destroy
    @attack_charm_type.destroy
    respond_to do |format|
      format.html { redirect_to attack_charm_types_url, notice: 'Attack charm type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attack_charm_type
      @attack_charm_type = AttackCharmType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attack_charm_type_params
      params[:attack_charm_type]
    end
end
