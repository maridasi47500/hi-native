class DemandesController < ApplicationController
  before_action :set_demande, only: %i[ show edit update destroy _1truc]
  before_action :authenticate_user!, only: [:_1truc]

  # GET /demandes or /demandes.json
  def _1truc
    @post=Post.new(demande_id: @demande.id)
    render "posts/new"
  end
  def index
    @demandes = Demande.all
  end

  # GET /demandes/1 or /demandes/1.json
  def show
  end

  # GET /demandes/new
  def new
    @demande = Demande.new
  end

  # GET /demandes/1/edit
  def edit
  end

  # POST /demandes or /demandes.json
  def create
    @demande = Demande.new(demande_params)

    respond_to do |format|
      if @demande.save
        format.html { redirect_to demande_url(@demande), notice: "Demande was successfully created." }
        format.json { render :show, status: :created, location: @demande }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @demande.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demandes/1 or /demandes/1.json
  def update
    respond_to do |format|
      if @demande.update(demande_params)
        format.html { redirect_to demande_url(@demande), notice: "Demande was successfully updated." }
        format.json { render :show, status: :ok, location: @demande }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @demande.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demandes/1 or /demandes/1.json
  def destroy
    @demande.destroy!

    respond_to do |format|
      format.html { redirect_to demandes_url, notice: "Demande was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demande
      @demande = Demande.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def demande_params
      params.require(:demande).permit(:name, :image, :icon)
    end
end
