class NativeLanguagesController < ApplicationController
  before_action :set_native_language, only: %i[ show edit update destroy ]

  # GET /native_languages or /native_languages.json
  def index
    @native_languages = NativeLanguage.all
  end

  # GET /native_languages/1 or /native_languages/1.json
  def show
  end

  # GET /native_languages/new
  def new
    @native_language = NativeLanguage.new
  end

  # GET /native_languages/1/edit
  def edit
  end

  # POST /native_languages or /native_languages.json
  def create
    @native_language = NativeLanguage.new(native_language_params)

    respond_to do |format|
      if @native_language.save
        format.html { redirect_to native_language_url(@native_language), notice: "Native language was successfully created." }
        format.json { render :show, status: :created, location: @native_language }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @native_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /native_languages/1 or /native_languages/1.json
  def update
    respond_to do |format|
      if @native_language.update(native_language_params)
        format.html { redirect_to native_language_url(@native_language), notice: "Native language was successfully updated." }
        format.json { render :show, status: :ok, location: @native_language }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @native_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /native_languages/1 or /native_languages/1.json
  def destroy
    @native_language.destroy!

    respond_to do |format|
      format.html { redirect_to native_languages_url, notice: "Native language was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_native_language
      @native_language = NativeLanguage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def native_language_params
      params.require(:native_language).permit(:user_id, :language_id, :learning_level_id)
    end
end
