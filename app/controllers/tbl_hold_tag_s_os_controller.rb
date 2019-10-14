class TblHoldTagSOsController < ApplicationController
before_action :authenticate_user!

  #cancancan
  load_and_authorize_resource
  # before_action :set_tbl_hold_tag_so, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :tbl_hold_tag_so

  # GET /tbl_hold_tag_sos
  def index
    @q = @tbl_hold_tag_sos.search params[:q]
    @tbl_hold_tag_sos = @q.result.page(params[:page])
  end

  # GET /tbl_hold_tag_sos/1
  def show
  end

  # GET /tbl_hold_tag_sos/new
  def new
  end

  # GET /tbl_hold_tag_sos/1/edit
  def edit
  end

  # POST /tbl_hold_tag_sos
  def create
    respond_to do |format|
      if @tbl_hold_tag_so.save
        format.html { redirect_to @tbl_hold_tag_so, notice: t('success_create') }
        format.json { render :show, status: :created, location: @tbl_hold_tag_so }
      else
        format.html { render :new }
        format.json { render json: @tbl_hold_tag_so.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tbl_hold_tag_sos/1
  def update
    respond_to do |format|
      if @tbl_hold_tag_so.update(tbl_hold_tag_so_params)
        format.html { redirect_to @tbl_hold_tag_so, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @tbl_hold_tag_so }
      else
        format.html { render :edit }
        format.json { render json: @tbl_hold_tag_so.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tbl_hold_tag_sos/1
  def destroy
    @tbl_hold_tag_so.destroy
    respond_to do |format|
      format.html { redirect_to tbl_hold_tag_sos_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def tbl_hold_tag_so_params
    params.require(:tbl_hold_tag_so).permit(:TagNumber, :DateClosed, :OKtoProcessBy, :SortAmt, :SortBy, :ReworkAmt, :ReworkBy, :ScrapAmt, :ScrapBy, :UseAsIsAmt, :UseAsIsBy, :AuthorizedBy)
  end
end
