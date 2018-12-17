class CommercialsController < ApplicationController
  before_action :set_commercial, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, :only => [:index, :show]
  load_and_authorize_resource
  # GET /commercials
  # GET /commercials.json
  def index
    @commercials = Commercial.where(role: 1)
    @commercials2 = Commercial.where(role: 0)
  end

  # GET /commercials/1
  # GET /commercials/1.json
  def show
    @vejas = Commercial.where(role: 1).limit(3)
  end

  # GET /commercials/new
  def new
    @commercial = Commercial.new
  end

  # GET /commercials/1/edit
  def edit
  end

  # POST /commercials
  # POST /commercials.json
  def create
    @commercial = Commercial.new(commercial_params)
    @commercial.user = current_user
    respond_to do |format|
      if @commercial.save
        
        format.html { redirect_to @commercial, notice: 'Commercial was successfully created.' }
        format.json { render :show, status: :created, location: @commercial }
      else
        format.html { render :new }
        format.json { render json: @commercial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commercials/1
  # PATCH/PUT /commercials/1.json
  def update
    respond_to do |format|
      if @commercial.update(commercial_params)
        format.html { redirect_to @commercial, notice: 'Commercial was successfully updated.' }
        format.json { render :show, status: :ok, location: @commercial }
      else
        format.html { render :edit }
        format.json { render json: @commercial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commercials/1
  # DELETE /commercials/1.json
  def destroy
    @commercial.destroy
    respond_to do |format|
      format.html { redirect_to commercials_url, notice: 'Commercial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commercial
      @commercial = Commercial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commercial_params
      params.require(:commercial).permit(:user_id, :address, :city_id, :phone, :category_id, :description, :title, :role, images: [])
    end
end
