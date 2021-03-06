class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :edit, :update, :destroy]

<<<<<<< HEAD

=======
  # GET /goals
  # GET /goals.json

  # GET /goals/1
  # GET /goals/1.json
  def show
  end

  # GET /goals/new
>>>>>>> b5fd48f7cd6132efe782bf12663eb118c52def06
  def new
    @goal = Goal.new
  end

<<<<<<< HEAD
  def edit
  end

  def index
    @goal = Goal.where(id: current_user.goal_id).pluck(:name).first
=======
  # GET /goals/1/edit
  def edit
  end

  # POST /goals
  # POST /goals.json
  def index
    @goals = Goal.all
    goal = Goal.new 
>>>>>>> b5fd48f7cd6132efe782bf12663eb118c52def06
  end

  def create
    @goal = Goal.new(goal_params)

    respond_to do |format|
      if @goal.save
        format.html { redirect_to goals_path, notice: 'Goal was successfully created.' }
        format.json { render :index, status: :created, location: @goal }
      else
        format.html { render :new }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

<<<<<<< HEAD
  def show
  end
  

=======
>>>>>>> b5fd48f7cd6132efe782bf12663eb118c52def06
  # PATCH/PUT /goals/1
  # PATCH/PUT /goals/1.json
  def update
    respond_to do |format|
      if @goal.update(goal_params)
        format.html { redirect_to @goal, notice: 'Goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal }
      else
        format.html { render :edit }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goals/1
  # DELETE /goals/1.json
  def destroy
    @goal.destroy
    respond_to do |format|
      format.html { redirect_to goals_url, notice: 'Goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_params
      params.require(:goal).permit(:name, :description, :progress)
    end
end
