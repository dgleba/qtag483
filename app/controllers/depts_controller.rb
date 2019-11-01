class DeptsController < ApplicationController
before_action :authenticate_user!

  #cancancan
  load_and_authorize_resource
  # before_action :set_dept, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :dept

  # GET /depts
  def index
    @q = @depts.search params[:q]
    @depts = @q.result.page(params[:page])
  end

  # GET /depts/1
  def show
  end

  # GET /depts/new
  def new
  end

  # GET /depts/1/edit
  def edit
  end

  # POST /depts
  def create
    respond_to do |format|
      if @dept.save
        format.html { redirect_to @dept, notice: t('success_create') }
        format.json { render :show, status: :created, location: @dept }
      else
        format.html { render :new }
        format.json { render json: @dept.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /depts/1
  def update
    respond_to do |format|
      if @dept.update(dept_params)
        format.html { redirect_to @dept, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @dept }
      else
        format.html { render :edit }
        format.json { render json: @dept.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /depts/1
  def destroy
    @dept.destroy
    respond_to do |format|
      format.html { redirect_to depts_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def dept_params
    params.require(:dept).permit(:Department, :DepartmentState)
  end
end
