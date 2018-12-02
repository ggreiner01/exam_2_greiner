class AdminstrationsController < ApplicationController
  before_action :set_adminstration, only: [:show, :edit, :update, :destroy]

  # GET /adminstrations
  # GET /adminstrations.json
  def index
    @adminstrations = Adminstration.all
  end

  # GET /adminstrations/1
  # GET /adminstrations/1.json
  def show
  end

  # GET /adminstrations/new
  def new
    @adminstration = Adminstration.new
  end

  # GET /adminstrations/1/edit
  def edit
  end

  # POST /adminstrations
  # POST /adminstrations.json
  def create
    @adminstration = Adminstration.new(adminstration_params)

    respond_to do |format|
      if @adminstration.save
        format.html { redirect_to @adminstration, notice: 'Adminstration was successfully created.' }
        format.json { render :show, status: :created, location: @adminstration }
      else
        format.html { render :new }
        format.json { render json: @adminstration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminstrations/1
  # PATCH/PUT /adminstrations/1.json
  def update
    respond_to do |format|
      if @adminstration.update(adminstration_params)
        format.html { redirect_to @adminstration, notice: 'Adminstration was successfully updated.' }
        format.json { render :show, status: :ok, location: @adminstration }
      else
        format.html { render :edit }
        format.json { render json: @adminstration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminstrations/1
  # DELETE /adminstrations/1.json
  def destroy
    @adminstration.destroy
    respond_to do |format|
      format.html { redirect_to adminstrations_url, notice: 'Adminstration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminstration
      @adminstration = Adminstration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adminstration_params
      params.require(:adminstration).permit(:name, :phone_number, :state, :zip)
    end
end
