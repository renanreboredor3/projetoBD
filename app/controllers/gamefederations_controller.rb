class GamefederationsController < ApplicationController
  before_action :set_gamefederation, only: [:show, :edit, :update, :destroy]

  # GET /gamefederations
  # GET /gamefederations.json
  def index
    @gamefederations = Gamefederation.all
  end

  # GET /gamefederations/1
  # GET /gamefederations/1.json
  def show
  end

  # GET /gamefederations/new
  def new
    @gamefederation = Gamefederation.new
  end

  # GET /gamefederations/1/edit
  def edit
  end

  # POST /gamefederations
  # POST /gamefederations.json
  def create
    @gamefederation = Gamefederation.new(gamefederation_params)

    respond_to do |format|
      if @gamefederation.save
        format.html { redirect_to @gamefederation, notice: 'Gamefederation was successfully created.' }
        format.json { render :show, status: :created, location: @gamefederation }
      else
        format.html { render :new }
        format.json { render json: @gamefederation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gamefederations/1
  # PATCH/PUT /gamefederations/1.json
  def update
    respond_to do |format|
      if @gamefederation.update(gamefederation_params)
        format.html { redirect_to @gamefederation, notice: 'Gamefederation was successfully updated.' }
        format.json { render :show, status: :ok, location: @gamefederation }
      else
        format.html { render :edit }
        format.json { render json: @gamefederation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gamefederations/1
  # DELETE /gamefederations/1.json
  def destroy
    @gamefederation.destroy
    respond_to do |format|
      format.html { redirect_to gamefederations_url, notice: 'Gamefederation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gamefederation
      @gamefederation = Gamefederation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gamefederation_params
      params.require(:gamefederation).permit(:game_id, :federation_id)
    end
end
