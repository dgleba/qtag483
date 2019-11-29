class TblCustDispoistionsController < ApplicationController
before_action :authenticate_user!

  #cancancan
  load_and_authorize_resource
  # before_action :set_tbl_cust_dispoistion, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :tbl_cust_dispoistion

  # GET /tbl_cust_dispoistions
  def index
    @q = @tbl_cust_dispoistions.search params[:q]
    @tbl_cust_dispoistions = @q.result.page(params[:page])
  end

  # GET /tbl_cust_dispoistions/1
  def show
  end

  # GET /tbl_cust_dispoistions/new
  def new
  end

  # GET /tbl_cust_dispoistions/1/edit
  def edit
  end

  # POST /tbl_cust_dispoistions
  def create
    respond_to do |format|
      if @tbl_cust_dispoistion.save
        format.html { redirect_to @tbl_cust_dispoistion, notice: t('success_create') }
        format.json { render :show, status: :created, location: @tbl_cust_dispoistion }
      else
        format.html { render :new }
        format.json { render json: @tbl_cust_dispoistion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tbl_cust_dispoistions/1
  def update
    respond_to do |format|
      if @tbl_cust_dispoistion.update(tbl_cust_dispoistion_params)
        format.html { redirect_to @tbl_cust_dispoistion, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @tbl_cust_dispoistion }
      else
        format.html { render :edit }
        format.json { render json: @tbl_cust_dispoistion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tbl_cust_dispoistions/1
  def destroy
    @tbl_cust_dispoistion.destroy
    respond_to do |format|
      format.html { redirect_to tbl_cust_dispoistions_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def tbl_cust_dispoistion_params
    params.require(:tbl_cust_dispoistion).permit(:Dispoisition)
  end
end
