class ElfWingsController < ApplicationController
  before_action :set_elf_wing, only: [:show, :edit, :update, :destroy]

  # GET /elf_wings
  # GET /elf_wings.json
  def index
    @elf_wings = ElfWing.all
  end

  # GET /elf_wings/1
  # GET /elf_wings/1.json
  def show
  end

  # GET /elf_wings/new
  def new
    @elf_wing = ElfWing.new
  end

  # GET /elf_wings/1/edit
  def edit
  end

  # POST /elf_wings
  # POST /elf_wings.json
  def create
    @elf_wing = ElfWing.new(elf_wing_params)

    respond_to do |format|
      if @elf_wing.save
        format.html { redirect_to @elf_wing, notice: 'Elf wing was successfully created.' }
        format.json { render :show, status: :created, location: @elf_wing }
      else
        format.html { render :new }
        format.json { render json: @elf_wing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elf_wings/1
  # PATCH/PUT /elf_wings/1.json
  def update
    respond_to do |format|
      if @elf_wing.update(elf_wing_params)
        format.html { redirect_to @elf_wing, notice: 'Elf wing was successfully updated.' }
        format.json { render :show, status: :ok, location: @elf_wing }
      else
        format.html { render :edit }
        format.json { render json: @elf_wing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elf_wings/1
  # DELETE /elf_wings/1.json
  def destroy
    @elf_wing.destroy
    respond_to do |format|
      format.html { redirect_to elf_wings_url, notice: 'Elf wing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elf_wing
      @elf_wing = ElfWing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def elf_wing_params
      params[:elf_wing]
    end
end
