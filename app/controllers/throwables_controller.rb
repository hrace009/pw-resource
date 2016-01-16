class ThrowablesController < ApplicationController
  before_action :set_throwable, only: [:show, :edit, :update, :destroy]

  # GET /throwables
  # GET /throwables.json
  def index
    @throwables = Throwable.all
  end

  # GET /throwables/1
  # GET /throwables/1.json
  def show
  end

  # GET /throwables/new
  def new
    @throwable = Throwable.new
  end

  # GET /throwables/1/edit
  def edit
  end

  # POST /throwables
  # POST /throwables.json
  def create
    @throwable = Throwable.new(throwable_params)

    respond_to do |format|
      if @throwable.save
        format.html { redirect_to @throwable, notice: 'Throwable was successfully created.' }
        format.json { render :show, status: :created, location: @throwable }
      else
        format.html { render :new }
        format.json { render json: @throwable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /throwables/1
  # PATCH/PUT /throwables/1.json
  def update
    respond_to do |format|
      if @throwable.update(throwable_params)
        format.html { redirect_to @throwable, notice: 'Throwable was successfully updated.' }
        format.json { render :show, status: :ok, location: @throwable }
      else
        format.html { render :edit }
        format.json { render json: @throwable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /throwables/1
  # DELETE /throwables/1.json
  def destroy
    @throwable.destroy
    respond_to do |format|
      format.html { redirect_to throwables_url, notice: 'Throwable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_throwable
      @throwable = Throwable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def throwable_params
      params[:throwable]
    end
end
