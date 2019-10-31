class TblHtpcReasonsController < ApplicationController
before_action :authenticate_user!

  #cancancan
  load_and_authorize_resource
  # before_action :set_tbl_htpc_reason, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :tbl_htpc_reason

  # GET /tbl_htpc_reasons
  def index
    @q = @tbl_htpc_reasons.search params[:q]
    @tbl_htpc_reasons = @q.result.page(params[:page])
  end

  # GET /tbl_htpc_reasons/1
  def show
  end

  # GET /tbl_htpc_reasons/new
  def new
  end

  # GET /tbl_htpc_reasons/1/edit
  def edit
  end

  # POST /tbl_htpc_reasons
  def create
    respond_to do |format|
      if @tbl_htpc_reason.save
        format.html { redirect_to @tbl_htpc_reason, notice: t('success_create') }
        format.json { render :show, status: :created, location: @tbl_htpc_reason }
      else
        format.html { render :new }
        format.json { render json: @tbl_htpc_reason.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tbl_htpc_reasons/1
  def update
    respond_to do |format|
      if @tbl_htpc_reason.update(tbl_htpc_reason_params)
        format.html { redirect_to @tbl_htpc_reason, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @tbl_htpc_reason }
      else
        format.html { render :edit }
        format.json { render json: @tbl_htpc_reason.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tbl_htpc_reasons/1
  def destroy
    @tbl_htpc_reason.destroy
    respond_to do |format|
      format.html { redirect_to tbl_htpc_reasons_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def tbl_htpc_reason_params
    params.require(:tbl_htpc_reason).permit(:Reason)
  end
end
