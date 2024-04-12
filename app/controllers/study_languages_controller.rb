class StudyLanguagesController < ApplicationController
  before_action :set_study_language, only: %i[ show edit update destroy ]

  # GET /study_languages or /study_languages.json
  def index
    @study_languages = StudyLanguage.all
  end

  # GET /study_languages/1 or /study_languages/1.json
  def show
  end

  # GET /study_languages/new
  def new
    @study_language = StudyLanguage.new
  end

  # GET /study_languages/1/edit
  def edit
  end

  # POST /study_languages or /study_languages.json
  def create
    @study_language = StudyLanguage.new(study_language_params)

    respond_to do |format|
      if @study_language.save
        format.html { redirect_to study_language_url(@study_language), notice: "Study language was successfully created." }
        format.json { render :show, status: :created, location: @study_language }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @study_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_languages/1 or /study_languages/1.json
  def update
    respond_to do |format|
      if @study_language.update(study_language_params)
        format.html { redirect_to study_language_url(@study_language), notice: "Study language was successfully updated." }
        format.json { render :show, status: :ok, location: @study_language }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @study_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_languages/1 or /study_languages/1.json
  def destroy
    @study_language.destroy!

    respond_to do |format|
      format.html { redirect_to study_languages_url, notice: "Study language was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_language
      @study_language = StudyLanguage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def study_language_params
      params.require(:study_language).permit(:user_id, :language_id, :learning_level_id)
    end
end
