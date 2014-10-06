class PreceptorsController < ApplicationController
  before_action :set_preceptor, only: [:show, :edit, :update, :destroy]
   load_and_authorize_resource
   skip_authorize_resource :only => :cresthome

  # GET /preceptors
  # GET /preceptors.json
  def index
    @preceptors = Preceptor.all
  end

  # GET /preceptors/1
  # GET /preceptors/1.json
  def show
  end

  # GET /preceptors/new
  def new
    @preceptor = Preceptor.new
  end

  # GET /preceptors/1/edit
  def edit
  end

  # POST /preceptors
  # POST /preceptors.json
  def create
    @preceptor = Preceptor.new(preceptor_params)

    respond_to do |format|
      if @preceptor.save
        format.html { redirect_to @preceptor, notice: 'Preceptor was successfully created.' }
        format.json { render :show, status: :created, location: @preceptor }
      else
        format.html { render :new }
        format.json { render json: @preceptor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /preceptors/1
  # PATCH/PUT /preceptors/1.json
  def update
    respond_to do |format|
      if @preceptor.update(preceptor_params)
        format.html { redirect_to @preceptor, notice: 'Preceptor was successfully updated.' }
        format.json { render :show, status: :ok, location: @preceptor }
      else
        format.html { render :edit }
        format.json { render json: @preceptor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preceptors/1
  # DELETE /preceptors/1.json
  def destroy
    @preceptor.destroy
    respond_to do |format|
      format.html { redirect_to preceptors_url, notice: 'Preceptor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def cresthome
  end
  def search 
    @preceptor = Preceptor.where(:abyasi_id=>params[:search])
    @preceptors = Preceptor.all
  end
   




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preceptor
      @preceptor = Preceptor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def preceptor_params
      params.require(:preceptor).permit(:name, :center, :abyasi_id, :place, :role)
    end
end
