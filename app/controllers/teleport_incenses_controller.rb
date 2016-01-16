class TeleportIncensesController < ApplicationController
  before_action :set_teleport_incense, only: [:show, :edit, :update, :destroy]

  # GET /teleport_incenses
  # GET /teleport_incenses.json
  def index
    @teleport_incenses = TeleportIncense.all
  end

  # GET /teleport_incenses/1
  # GET /teleport_incenses/1.json
  def show
  end

  # GET /teleport_incenses/new
  def new
    @teleport_incense = TeleportIncense.new
  end

  # GET /teleport_incenses/1/edit
  def edit
  end

  # POST /teleport_incenses
  # POST /teleport_incenses.json
  def create
    @teleport_incense = TeleportIncense.new(teleport_incense_params)

    respond_to do |format|
      if @teleport_incense.save
        format.html { redirect_to @teleport_incense, notice: 'Teleport incense was successfully created.' }
        format.json { render :show, status: :created, location: @teleport_incense }
      else
        format.html { render :new }
        format.json { render json: @teleport_incense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teleport_incenses/1
  # PATCH/PUT /teleport_incenses/1.json
  def update
    respond_to do |format|
      if @teleport_incense.update(teleport_incense_params)
        format.html { redirect_to @teleport_incense, notice: 'Teleport incense was successfully updated.' }
        format.json { render :show, status: :ok, location: @teleport_incense }
      else
        format.html { render :edit }
        format.json { render json: @teleport_incense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teleport_incenses/1
  # DELETE /teleport_incenses/1.json
  def destroy
    @teleport_incense.destroy
    respond_to do |format|
      format.html { redirect_to teleport_incenses_url, notice: 'Teleport incense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teleport_incense
      @teleport_incense = TeleportIncense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teleport_incense_params
      params[:teleport_incense]
    end
end
