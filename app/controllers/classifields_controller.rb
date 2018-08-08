class ClassifieldsController < ApplicationController
  before_action :set_classifield, only: [:show, :edit, :update, :destroy]

  # GET /classifields
  # GET /classifields.json
  def index
    @classifields = Classifield.all
  end

  # GET /classifields/1
  # GET /classifields/1.json
  def show
    @vejas = Classifield.limit(3).reverse_order
  end

  # GET /classifields/new
  def new
    @classifield = Classifield.new
  end

  # GET /classifields/1/edit
  def edit
  end

  # POST /classifields
  # POST /classifields.json
  def create
    @classifield = Classifield.new(classifield_params)
    @classifield.user = current_user
    respond_to do |format|
      if @classifield.save
        format.html { redirect_to @classifield, notice: 'Classifield was successfully created.' }
        format.json { render :show, status: :created, location: @classifield }
      else
        format.html { render :new }
        format.json { render json: @classifield.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classifields/1
  # PATCH/PUT /classifields/1.json
  def update
    respond_to do |format|
      if @classifield.update(classifield_params)
        format.html { redirect_to @classifield, notice: 'Classifield was successfully updated.' }
        format.json { render :show, status: :ok, location: @classifield }
      else
        format.html { render :edit }
        format.json { render json: @classifield.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classifields/1
  # DELETE /classifields/1.json
  def destroy
    @classifield.destroy
    respond_to do |format|
      format.html { redirect_to classifields_url, notice: 'Classifield was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classifield
      @classifield = Classifield.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classifield_params
      params.require(:classifield).permit(:user_id, :title, :description, :value, :date, :sale, :avatar, :city_id, :phone)
    end
end
