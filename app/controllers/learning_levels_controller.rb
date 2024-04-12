class LearningLevelsController < ApplicationController
  before_action :set_learning_level, only: %i[ show edit update destroy ]

  # GET /learning_levels or /learning_levels.json
  def index
    @learning_levels = LearningLevel.all
  end

  # GET /learning_levels/1 or /learning_levels/1.json
  def show
  end

  # GET /learning_levels/new
  def new
    @learning_level = LearningLevel.new
  end

  # GET /learning_levels/1/edit
  def edit
  end

  # POST /learning_levels or /learning_levels.json
  def create
    @learning_level = LearningLevel.new(learning_level_params)

    respond_to do |format|
      if @learning_level.save
        format.html { redirect_to learning_level_url(@learning_level), notice: "Learning level was successfully created." }
        format.json { render :show, status: :created, location: @learning_level }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @learning_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /learning_levels/1 or /learning_levels/1.json
  def update
    respond_to do |format|
      if @learning_level.update(learning_level_params)
        format.html { redirect_to learning_level_url(@learning_level), notice: "Learning level was successfully updated." }
        format.json { render :show, status: :ok, location: @learning_level }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @learning_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /learning_levels/1 or /learning_levels/1.json
  def destroy
    @learning_level.destroy!

    respond_to do |format|
      format.html { redirect_to learning_levels_url, notice: "Learning level was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_learning_level
      @learning_level = LearningLevel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def learning_level_params
      params.require(:learning_level).permit(:name, :description)
    end
end
