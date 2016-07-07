class HealthcaresupportsController < ApplicationController
  before_action :set_healthcaresupport, only: [:show, :edit, :update, :destroy]

  # GET /healthcaresupports
  # GET /healthcaresupports.json
  def index
    @healthcaresupports = Healthcaresupport.all
  end

  # GET /healthcaresupports/1
  # GET /healthcaresupports/1.json
  def show
  end

  # GET /healthcaresupports/new
  def new
    @healthcaresupport = Healthcaresupport.new
  end

  # GET /healthcaresupports/1/edit
  def edit
  end

  # POST /healthcaresupports
  # POST /healthcaresupports.json
  def create
    @healthcaresupport = Healthcaresupport.new(healthcaresupport_params)

    respond_to do |format|
      if @healthcaresupport.save
        format.html { redirect_to @healthcaresupport, notice: 'Healthcaresupport was successfully created.' }
        format.json { render :show, status: :created, location: @healthcaresupport }
      else
        format.html { render :new }
        format.json { render json: @healthcaresupport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /healthcaresupports/1
  # PATCH/PUT /healthcaresupports/1.json
  def update
    respond_to do |format|
      if @healthcaresupport.update(healthcaresupport_params)
        format.html { redirect_to @healthcaresupport, notice: 'Healthcaresupport was successfully updated.' }
        format.json { render :show, status: :ok, location: @healthcaresupport }
      else
        format.html { render :edit }
        format.json { render json: @healthcaresupport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /healthcaresupports/1
  # DELETE /healthcaresupports/1.json
  def destroy
    @healthcaresupport.destroy
    respond_to do |format|
      format.html { redirect_to healthcaresupports_url, notice: 'Healthcaresupport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_healthcaresupport
      @healthcaresupport = Healthcaresupport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def healthcaresupport_params
      params.require(:healthcaresupport).permit(:medic_id, :federation_id)
    end
end
