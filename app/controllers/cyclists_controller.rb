class CyclistsController < ApplicationController
  before_action :set_cyclist, only: [:show, :edit, :update, :destroy]

  # GET /cyclists
  # GET /cyclists.json
  def index
    @cyclists = Cyclist.all
  end

  # GET /cyclists/1
  # GET /cyclists/1.json
  def show
  end

  # GET /cyclists/new
  def new
    @cyclist = Cyclist.new
  end

  # GET /cyclists/1/edit
  def edit
  end

  # POST /cyclists
  # POST /cyclists.json
  def create
    @cyclist = Cyclist.new(cyclist_params)

    respond_to do |format|
      if @cyclist.save
        format.html { redirect_to @cyclist, notice: 'Cyclist was successfully created.' }
        format.json { render :show, status: :created, location: @cyclist }
      else
        format.html { render :new }
        format.json { render json: @cyclist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cyclists/1
  # PATCH/PUT /cyclists/1.json
  def update
    respond_to do |format|
      if @cyclist.update(cyclist_params)
        format.html { redirect_to @cyclist, notice: 'Cyclist was successfully updated.' }
        format.json { render :show, status: :ok, location: @cyclist }
      else
        format.html { render :edit }
        format.json { render json: @cyclist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cyclists/1
  # DELETE /cyclists/1.json
  def destroy
    @cyclist.destroy
    respond_to do |format|
      format.html { redirect_to cyclists_url, notice: 'Cyclist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cyclist
      @cyclist = Cyclist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cyclist_params
      params.require(:cyclist).permit(:female_with_helmet, :female_no_helmet, :female_sidewalk, :female_wrong_way, :male_with_helmet, :male_no_helmet, :male_sidewalk, :male_wrong_way)
    end
end
