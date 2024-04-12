class UserInterestedCountriesController < ApplicationController
  before_action :set_user_interested_country, only: %i[ show edit update destroy ]

  # GET /user_interested_countries or /user_interested_countries.json
  def index
    @user_interested_countries = UserInterestedCountry.all
  end

  # GET /user_interested_countries/1 or /user_interested_countries/1.json
  def show
  end

  # GET /user_interested_countries/new
  def new
    @user_interested_country = UserInterestedCountry.new
  end

  # GET /user_interested_countries/1/edit
  def edit
  end

  # POST /user_interested_countries or /user_interested_countries.json
  def create
    @user_interested_country = UserInterestedCountry.new(user_interested_country_params)

    respond_to do |format|
      if @user_interested_country.save
        format.html { redirect_to user_interested_country_url(@user_interested_country), notice: "User interested country was successfully created." }
        format.json { render :show, status: :created, location: @user_interested_country }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_interested_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_interested_countries/1 or /user_interested_countries/1.json
  def update
    respond_to do |format|
      if @user_interested_country.update(user_interested_country_params)
        format.html { redirect_to user_interested_country_url(@user_interested_country), notice: "User interested country was successfully updated." }
        format.json { render :show, status: :ok, location: @user_interested_country }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_interested_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_interested_countries/1 or /user_interested_countries/1.json
  def destroy
    @user_interested_country.destroy!

    respond_to do |format|
      format.html { redirect_to user_interested_countries_url, notice: "User interested country was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_interested_country
      @user_interested_country = UserInterestedCountry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_interested_country_params
      params.require(:user_interested_country).permit(:user_id, :country_id)
    end
end
