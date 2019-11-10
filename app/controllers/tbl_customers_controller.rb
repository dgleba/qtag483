class TblCustomersController < ApplicationController
before_action :authenticate_user!

  #cancancan
  load_and_authorize_resource
  # before_action :set_tbl_customer, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :tbl_customer

  # GET /tbl_customers
  def index
    @q = @tbl_customers.search params[:q]
    @tbl_customers = @q.result.page(params[:page])
  end

  # GET /tbl_customers/1
  def show
  end

  # GET /tbl_customers/new
  def new
  end

  # GET /tbl_customers/1/edit
  def edit
  end

  # POST /tbl_customers
  def create
    respond_to do |format|
      if @tbl_customer.save
        format.html { redirect_to @tbl_customer, notice: t('success_create') }
        format.json { render :show, status: :created, location: @tbl_customer }
      else
        format.html { render :new }
        format.json { render json: @tbl_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tbl_customers/1
  def update
    respond_to do |format|
      if @tbl_customer.update(tbl_customer_params)
        format.html { redirect_to @tbl_customer, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @tbl_customer }
      else
        format.html { render :edit }
        format.json { render json: @tbl_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tbl_customers/1
  def destroy
    @tbl_customer.destroy
    respond_to do |format|
      format.html { redirect_to tbl_customers_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def tbl_customer_params
    params.require(:tbl_customer).permit(:CustName, :CustLocation, :Current)
  end
end
