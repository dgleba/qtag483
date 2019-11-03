class HealthchecksController < ApplicationController
before_action :authenticate_user!

  #cancancan
  load_and_authorize_resource
  # before_action :set_healthcheck, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :healthcheck

  # GET /healthchecks
  def index
    @q = @healthchecks.search params[:q]
    @healthchecks = @q.result.page(params[:page])
  end

  # GET /healthchecks/1
  def show
  end

  # GET /healthchecks/new
  def new
  end

  # GET /healthchecks/1/edit
  def edit
  end

  # POST /healthchecks
  def create
    respond_to do |format|
      if @healthcheck.save
        format.html { redirect_to @healthcheck, notice: t('success_create') }
        format.json { render :show, status: :created, location: @healthcheck }
      else
        format.html { render :new }
        format.json { render json: @healthcheck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /healthchecks/1
  def update
    respond_to do |format|
      if @healthcheck.update(healthcheck_params)
        format.html { redirect_to @healthcheck, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @healthcheck }
      else
        format.html { render :edit }
        format.json { render json: @healthcheck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /healthchecks/1
  def destroy
    @healthcheck.destroy
    respond_to do |format|
      format.html { redirect_to healthchecks_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def healthcheck_params
    params.require(:healthcheck).permit(:name, :ip_address, :username, :user_id, :comment, :active_status, :sort_order)
  end
end
