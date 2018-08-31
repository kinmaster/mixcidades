class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :sanitize_fields_params, only: [:create, :update]
 
  
  # GET /users
  # GET /users.json

  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.friendly.find(params[:id])
    @classifields = Classifield.where(user: current_user)
    @jobs = Job.where(user: current_user)
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        if params[:user][:avatar].present?
          render :crop
        else
          format.html { redirect_to @user, notice: 'User was successfully created.' }
          format.json { render :show, status: :created, location: @user }
        end
        
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    
      if @user.update(user_params)
        if params[:user][:avatar].present?
          render :crop
        else        
         redirect_to @user, notice: 'User was successfully updated.' 
        
        end
      else
         render :edit 
        
      end
    
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def sanitize_fields_params
    $logo_crop_x = 0
    $logo_crop_y = 0
    $logo_crop_w = 0
    $logo_crop_h = 0

    $logo_crop_x = params[:user][:logo_crop_x]
    $logo_crop_y = params[:user][:logo_crop_y]
    $logo_crop_w = params[:user][:logo_crop_w]
    $logo_crop_h = params[:user][:logo_crop_h]
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :function, :city_id, :avatar, :email, :password, :logo_crop_x, :logo_crop_y, :logo_crop_w, :logo_crop_h)
    end
end
