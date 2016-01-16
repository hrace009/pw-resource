class AttackCharmsController < ApplicationController
  before_action :set_attack_charm, only: [:show, :edit, :update, :destroy]

  # GET /attack_charms
  # GET /attack_charms.json
  def index
    @attack_charms = AttackCharm.all
  end

  # GET /attack_charms/1
  # GET /attack_charms/1.json
  def show
  end

  # GET /attack_charms/new
  def new
    @attack_charm = AttackCharm.new
  end

  # GET /attack_charms/1/edit
  def edit
  end

  # POST /attack_charms
  # POST /attack_charms.json
  def create
    @attack_charm = AttackCharm.new(attack_charm_params)

    respond_to do |format|
      if @attack_charm.save
        format.html { redirect_to @attack_charm, notice: 'Attack charm was successfully created.' }
        format.json { render :show, status: :created, location: @attack_charm }
      else
        format.html { render :new }
        format.json { render json: @attack_charm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attack_charms/1
  # PATCH/PUT /attack_charms/1.json
  def update
    respond_to do |format|
      if @attack_charm.update(attack_charm_params)
        format.html { redirect_to @attack_charm, notice: 'Attack charm was successfully updated.' }
        format.json { render :show, status: :ok, location: @attack_charm }
      else
        format.html { render :edit }
        format.json { render json: @attack_charm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attack_charms/1
  # DELETE /attack_charms/1.json
  def destroy
    @attack_charm.destroy
    respond_to do |format|
      format.html { redirect_to attack_charms_url, notice: 'Attack charm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attack_charm
      @attack_charm = AttackCharm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attack_charm_params
      params[:attack_charm]
    end
end
