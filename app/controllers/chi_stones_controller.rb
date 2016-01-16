class ChiStonesController < ApplicationController
  before_action :set_chi_stone, only: [:show, :edit, :update, :destroy]

  # GET /chi_stones
  # GET /chi_stones.json
  def index
    @chi_stones = ChiStone.all
  end

  # GET /chi_stones/1
  # GET /chi_stones/1.json
  def show
  end

  # GET /chi_stones/new
  def new
    @chi_stone = ChiStone.new
  end

  # GET /chi_stones/1/edit
  def edit
  end

  # POST /chi_stones
  # POST /chi_stones.json
  def create
    @chi_stone = ChiStone.new(chi_stone_params)

    respond_to do |format|
      if @chi_stone.save
        format.html { redirect_to @chi_stone, notice: 'Chi stone was successfully created.' }
        format.json { render :show, status: :created, location: @chi_stone }
      else
        format.html { render :new }
        format.json { render json: @chi_stone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chi_stones/1
  # PATCH/PUT /chi_stones/1.json
  def update
    respond_to do |format|
      if @chi_stone.update(chi_stone_params)
        format.html { redirect_to @chi_stone, notice: 'Chi stone was successfully updated.' }
        format.json { render :show, status: :ok, location: @chi_stone }
      else
        format.html { render :edit }
        format.json { render json: @chi_stone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chi_stones/1
  # DELETE /chi_stones/1.json
  def destroy
    @chi_stone.destroy
    respond_to do |format|
      format.html { redirect_to chi_stones_url, notice: 'Chi stone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chi_stone
      @chi_stone = ChiStone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chi_stone_params
      params[:chi_stone]
    end
end
