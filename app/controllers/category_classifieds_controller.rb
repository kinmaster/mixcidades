class CategoryClassifiedsController < ApplicationController
  before_action :set_category_classified, only: [:show, :edit, :update, :destroy]

  # GET /category_classifieds
  # GET /category_classifieds.json
  def index
    @category_classifieds = CategoryClassified.all
  end

  # GET /category_classifieds/1
  # GET /category_classifieds/1.json
  def show
  end

  # GET /category_classifieds/new
  def new
    @category_classified = CategoryClassified.new
  end

  # GET /category_classifieds/1/edit
  def edit
  end

  # POST /category_classifieds
  # POST /category_classifieds.json
  def create
    @category_classified = CategoryClassified.new(category_classified_params)

    respond_to do |format|
      if @category_classified.save
        format.html { redirect_to @category_classified, notice: 'Category classified was successfully created.' }
        format.json { render :show, status: :created, location: @category_classified }
      else
        format.html { render :new }
        format.json { render json: @category_classified.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_classifieds/1
  # PATCH/PUT /category_classifieds/1.json
  def update
    respond_to do |format|
      if @category_classified.update(category_classified_params)
        format.html { redirect_to @category_classified, notice: 'Category classified was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_classified }
      else
        format.html { render :edit }
        format.json { render json: @category_classified.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_classifieds/1
  # DELETE /category_classifieds/1.json
  def destroy
    @category_classified.destroy
    respond_to do |format|
      format.html { redirect_to category_classifieds_url, notice: 'Category classified was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_classified
      @category_classified = CategoryClassified.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_classified_params
      params.require(:category_classified).permit(:user_id, :title)
    end
end
