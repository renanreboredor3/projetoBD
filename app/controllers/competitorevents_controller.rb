class CompetitoreventsController < ApplicationController
  before_action :set_competitorevent, only: [:show, :edit, :update, :destroy]

  # GET /competitorevents
  # GET /competitorevents.json
  def index
    @competitorevents = Competitorevent.all
  end

  # GET /competitorevents/1
  # GET /competitorevents/1.json
  def show
  end

  # GET /competitorevents/new
  def new
    @competitorevent = Competitorevent.new
  end

  # GET /competitorevents/1/edit
  def edit
  end

  # POST /competitorevents
  # POST /competitorevents.json
  def create
    @competitorevent = Competitorevent.new(competitorevent_params)

    respond_to do |format|
      if @competitorevent.save
        format.html { redirect_to @competitorevent, notice: 'Competitorevent was successfully created.' }
        format.json { render :show, status: :created, location: @competitorevent }
      else
        format.html { render :new }
        format.json { render json: @competitorevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competitorevents/1
  # PATCH/PUT /competitorevents/1.json
  def update
    respond_to do |format|
      if @competitorevent.update(competitorevent_params)
        format.html { redirect_to @competitorevent, notice: 'Competitorevent was successfully updated.' }
        format.json { render :show, status: :ok, location: @competitorevent }
      else
        format.html { render :edit }
        format.json { render json: @competitorevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competitorevents/1
  # DELETE /competitorevents/1.json
  def destroy
    @competitorevent.destroy
    respond_to do |format|
      format.html { redirect_to competitorevents_url, notice: 'Competitorevent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competitorevent
      @competitorevent = Competitorevent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competitorevent_params
      params.require(:competitorevent).permit(:event_id, :competitor_id)
    end
end
