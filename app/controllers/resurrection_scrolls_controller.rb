class ResurrectionScrollsController < ApplicationController
  before_action :set_resurrection_scroll, only: [:show, :edit, :update, :destroy]

  # GET /resurrection_scrolls
  # GET /resurrection_scrolls.json
  def index
    @resurrection_scrolls = ResurrectionScroll.all
  end

  # GET /resurrection_scrolls/1
  # GET /resurrection_scrolls/1.json
  def show
  end

  # GET /resurrection_scrolls/new
  def new
    @resurrection_scroll = ResurrectionScroll.new
  end

  # GET /resurrection_scrolls/1/edit
  def edit
  end

  # POST /resurrection_scrolls
  # POST /resurrection_scrolls.json
  def create
    @resurrection_scroll = ResurrectionScroll.new(resurrection_scroll_params)

    respond_to do |format|
      if @resurrection_scroll.save
        format.html { redirect_to @resurrection_scroll, notice: 'Resurrection scroll was successfully created.' }
        format.json { render :show, status: :created, location: @resurrection_scroll }
      else
        format.html { render :new }
        format.json { render json: @resurrection_scroll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resurrection_scrolls/1
  # PATCH/PUT /resurrection_scrolls/1.json
  def update
    respond_to do |format|
      if @resurrection_scroll.update(resurrection_scroll_params)
        format.html { redirect_to @resurrection_scroll, notice: 'Resurrection scroll was successfully updated.' }
        format.json { render :show, status: :ok, location: @resurrection_scroll }
      else
        format.html { render :edit }
        format.json { render json: @resurrection_scroll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resurrection_scrolls/1
  # DELETE /resurrection_scrolls/1.json
  def destroy
    @resurrection_scroll.destroy
    respond_to do |format|
      format.html { redirect_to resurrection_scrolls_url, notice: 'Resurrection scroll was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resurrection_scroll
      @resurrection_scroll = ResurrectionScroll.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resurrection_scroll_params
      params[:resurrection_scroll]
    end
end
