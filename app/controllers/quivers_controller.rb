class QuiversController < ApplicationController
  before_action :set_quiver, only: [:show, :edit, :update, :destroy]

  # GET /quivers
  # GET /quivers.json
  def index
    @quivers = Quiver.all
  end

  # GET /quivers/1
  # GET /quivers/1.json
  def show
  end

  # GET /quivers/new
  def new
    @quiver = Quiver.new
  end

  # GET /quivers/1/edit
  def edit
  end

  # POST /quivers
  # POST /quivers.json
  def create
    @quiver = Quiver.new(quiver_params)

    respond_to do |format|
      if @quiver.save
        format.html { redirect_to @quiver, notice: 'Quiver was successfully created.' }
        format.json { render :show, status: :created, location: @quiver }
      else
        format.html { render :new }
        format.json { render json: @quiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quivers/1
  # PATCH/PUT /quivers/1.json
  def update
    respond_to do |format|
      if @quiver.update(quiver_params)
        format.html { redirect_to @quiver, notice: 'Quiver was successfully updated.' }
        format.json { render :show, status: :ok, location: @quiver }
      else
        format.html { render :edit }
        format.json { render json: @quiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quivers/1
  # DELETE /quivers/1.json
  def destroy
    @quiver.destroy
    respond_to do |format|
      format.html { redirect_to quivers_url, notice: 'Quiver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiver
      @quiver = Quiver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quiver_params
      params[:quiver]
    end
end
