class SkilltomesController < ApplicationController
  before_action :set_skilltome, only: [:show, :edit, :update, :destroy]

  # GET /skilltomes
  # GET /skilltomes.json
  def index
    @skilltomes = Skilltome.all
  end

  # GET /skilltomes/1
  # GET /skilltomes/1.json
  def show
  end

  # GET /skilltomes/new
  def new
    @skilltome = Skilltome.new
  end

  # GET /skilltomes/1/edit
  def edit
  end

  # POST /skilltomes
  # POST /skilltomes.json
  def create
    @skilltome = Skilltome.new(skilltome_params)

    respond_to do |format|
      if @skilltome.save
        format.html { redirect_to @skilltome, notice: 'Skilltome was successfully created.' }
        format.json { render :show, status: :created, location: @skilltome }
      else
        format.html { render :new }
        format.json { render json: @skilltome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skilltomes/1
  # PATCH/PUT /skilltomes/1.json
  def update
    respond_to do |format|
      if @skilltome.update(skilltome_params)
        format.html { redirect_to @skilltome, notice: 'Skilltome was successfully updated.' }
        format.json { render :show, status: :ok, location: @skilltome }
      else
        format.html { render :edit }
        format.json { render json: @skilltome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skilltomes/1
  # DELETE /skilltomes/1.json
  def destroy
    @skilltome.destroy
    respond_to do |format|
      format.html { redirect_to skilltomes_url, notice: 'Skilltome was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skilltome
      @skilltome = Skilltome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skilltome_params
      params[:skilltome]
    end
end
