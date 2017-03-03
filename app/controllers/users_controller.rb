class UsersController < ApplicationController
<<<<<<< HEAD
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :destroy]
 

=======
  before_action :set_user, only: [:show, :edit, :update, :destroy]
 

  # GET /users
  # GET /users.json
>>>>>>> b5fd48f7cd6132efe782bf12663eb118c52def06
  def index
    @users = User.all
  end

<<<<<<< HEAD
  def show
    @goals = Goal.where(user_id: @user.id).to_a
  end

=======
  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
>>>>>>> b5fd48f7cd6132efe782bf12663eb118c52def06
  def new
    @user = User.new
  end

<<<<<<< HEAD
  def edit
  end

=======
  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
>>>>>>> b5fd48f7cd6132efe782bf12663eb118c52def06
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

<<<<<<< HEAD
=======
  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
>>>>>>> b5fd48f7cd6132efe782bf12663eb118c52def06
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

<<<<<<< HEAD
=======
  # DELETE /users/1
  # DELETE /users/1.json
>>>>>>> b5fd48f7cd6132efe782bf12663eb118c52def06
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

<<<<<<< HEAD

=======
>>>>>>> b5fd48f7cd6132efe782bf12663eb118c52def06
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:firstname, :lastname, :email)
    end
end
