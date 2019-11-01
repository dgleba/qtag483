class MachinesController < ApplicationController
before_action :authenticate_user!

  #cancancan
  load_and_authorize_resource
  # before_action :set_machine, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :machine

  # GET /machines
  def index
    @q = @machines.search params[:q]
    @machines = @q.result.page(params[:page])
  end

  # GET /machines/1
  def show
  end

  # GET /machines/new
  def new
  end

  # GET /machines/1/edit
  def edit
  end

  # POST /machines
  def create
    respond_to do |format|
      if @machine.save
        format.html { redirect_to @machine, notice: t('success_create') }
        format.json { render :show, status: :created, location: @machine }
      else
        format.html { render :new }
        format.json { render json: @machine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /machines/1
  def update
    respond_to do |format|
      if @machine.update(machine_params)
        format.html { redirect_to @machine, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @machine }
      else
        format.html { render :edit }
        format.json { render json: @machine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /machines/1
  def destroy
    @machine.destroy
    respond_to do |format|
      format.html { redirect_to machines_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def machine_params
    params.require(:machine).permit(:DeptID, :MachineDesc, :PlantID, :Stamp)
  end
end
