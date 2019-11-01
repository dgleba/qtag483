class PartsController < ApplicationController
before_action :authenticate_user!

  #cancancan
  load_and_authorize_resource
  # before_action :set_part, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :part

  # GET /parts
  def index
    @q = @parts.search params[:q]
    @parts = @q.result.page(params[:page])
  end

  # GET /parts/1
  def show
  end

  # GET /parts/new
  def new
  end

  # GET /parts/1/edit
  def edit
  end

  # POST /parts
  def create
    respond_to do |format|
      if @part.save
        format.html { redirect_to @part, notice: t('success_create') }
        format.json { render :show, status: :created, location: @part }
      else
        format.html { render :new }
        format.json { render json: @part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parts/1
  def update
    respond_to do |format|
      if @part.update(part_params)
        format.html { redirect_to @part, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @part }
      else
        format.html { render :edit }
        format.json { render json: @part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parts/1
  def destroy
    @part.destroy
    respond_to do |format|
      format.html { redirect_to parts_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def part_params
    params.require(:part).permit(:Description, :RptScrap, :PlantNumber)
  end
end
