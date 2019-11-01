class OperationsController < ApplicationController
before_action :authenticate_user!

  #cancancan
  load_and_authorize_resource
  # before_action :set_operation, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :operation

  # GET /operations
  def index
    @q = @operations.search params[:q]
    @operations = @q.result.page(params[:page])
  end

  # GET /operations/1
  def show
  end

  # GET /operations/new
  def new
  end

  # GET /operations/1/edit
  def edit
  end

  # POST /operations
  def create
    respond_to do |format|
      if @operation.save
        format.html { redirect_to @operation, notice: t('success_create') }
        format.json { render :show, status: :created, location: @operation }
      else
        format.html { render :new }
        format.json { render json: @operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operations/1
  def update
    respond_to do |format|
      if @operation.update(operation_params)
        format.html { redirect_to @operation, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @operation }
      else
        format.html { render :edit }
        format.json { render json: @operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operations/1
  def destroy
    @operation.destroy
    respond_to do |format|
      format.html { redirect_to operations_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def operation_params
    params.require(:operation).permit(:Operation, :OperationDecp)
  end
end
