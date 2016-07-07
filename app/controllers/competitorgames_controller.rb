class CompetitorgamesController < ApplicationController
  before_action :set_competitorgame, only: [:show, :edit, :update, :destroy]

  # GET /competitorgames
  # GET /competitorgames.json
  def index
    @competitorgames = Competitorgame.all
  end

  # GET /competitorgames/1
  # GET /competitorgames/1.json
  def show
  end

  # GET /competitorgames/new
  def new
    @competitorgame = Competitorgame.new
  end

  # GET /competitorgames/1/edit
  def edit
  end

  # POST /competitorgames
  # POST /competitorgames.json
  def create
    @competitorgame = Competitorgame.new(competitorgame_params)

    respond_to do |format|
      if @competitorgame.save
        format.html { redirect_to @competitorgame, notice: 'Competitorgame was successfully created.' }
        format.json { render :show, status: :created, location: @competitorgame }
      else
        format.html { render :new }
        format.json { render json: @competitorgame.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competitorgames/1
  # PATCH/PUT /competitorgames/1.json
  def update
    respond_to do |format|
      if @competitorgame.update(competitorgame_params)
        format.html { redirect_to @competitorgame, notice: 'Competitorgame was successfully updated.' }
        format.json { render :show, status: :ok, location: @competitorgame }
      else
        format.html { render :edit }
        format.json { render json: @competitorgame.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competitorgames/1
  # DELETE /competitorgames/1.json
  def destroy
    @competitorgame.destroy
    respond_to do |format|
      format.html { redirect_to competitorgames_url, notice: 'Competitorgame was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competitorgame
      @competitorgame = Competitorgame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competitorgame_params
      params.require(:competitorgame).permit(:game_id, :competitor_id)
    end
end
