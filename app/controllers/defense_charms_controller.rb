class DefenseCharmsController < ApplicationController
  before_action :set_defense_charm, only: [:show, :edit, :update, :destroy]

  # GET /defense_charms
  # GET /defense_charms.json
  def index
    @defense_charms = DefenseCharm.all
  end

  # GET /defense_charms/1
  # GET /defense_charms/1.json
  def show
  end

  # GET /defense_charms/new
  def new
    @defense_charm = DefenseCharm.new
  end

  # GET /defense_charms/1/edit
  def edit
  end

  # POST /defense_charms
  # POST /defense_charms.json
  def create
    @defense_charm = DefenseCharm.new(defense_charm_params)

    respond_to do |format|
      if @defense_charm.save
        format.html { redirect_to @defense_charm, notice: 'Defense charm was successfully created.' }
        format.json { render :show, status: :created, location: @defense_charm }
      else
        format.html { render :new }
        format.json { render json: @defense_charm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /defense_charms/1
  # PATCH/PUT /defense_charms/1.json
  def update
    respond_to do |format|
      if @defense_charm.update(defense_charm_params)
        format.html { redirect_to @defense_charm, notice: 'Defense charm was successfully updated.' }
        format.json { render :show, status: :ok, location: @defense_charm }
      else
        format.html { render :edit }
        format.json { render json: @defense_charm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /defense_charms/1
  # DELETE /defense_charms/1.json
  def destroy
    @defense_charm.destroy
    respond_to do |format|
      format.html { redirect_to defense_charms_url, notice: 'Defense charm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_defense_charm
      @defense_charm = DefenseCharm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def defense_charm_params
      params[:defense_charm]
    end
end
