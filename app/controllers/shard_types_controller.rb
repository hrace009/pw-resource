class ShardTypesController < ApplicationController
  before_action :set_shard_type, only: [:show, :edit, :update, :destroy]

  # GET /shard_types
  # GET /shard_types.json
  def index
    @shard_types = ShardType.all
  end

  # GET /shard_types/1
  # GET /shard_types/1.json
  def show
  end

  # GET /shard_types/new
  def new
    @shard_type = ShardType.new
  end

  # GET /shard_types/1/edit
  def edit
  end

  # POST /shard_types
  # POST /shard_types.json
  def create
    @shard_type = ShardType.new(shard_type_params)

    respond_to do |format|
      if @shard_type.save
        format.html { redirect_to @shard_type, notice: 'Shard type was successfully created.' }
        format.json { render :show, status: :created, location: @shard_type }
      else
        format.html { render :new }
        format.json { render json: @shard_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shard_types/1
  # PATCH/PUT /shard_types/1.json
  def update
    respond_to do |format|
      if @shard_type.update(shard_type_params)
        format.html { redirect_to @shard_type, notice: 'Shard type was successfully updated.' }
        format.json { render :show, status: :ok, location: @shard_type }
      else
        format.html { render :edit }
        format.json { render json: @shard_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shard_types/1
  # DELETE /shard_types/1.json
  def destroy
    @shard_type.destroy
    respond_to do |format|
      format.html { redirect_to shard_types_url, notice: 'Shard type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shard_type
      @shard_type = ShardType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shard_type_params
      params[:shard_type]
    end
end
