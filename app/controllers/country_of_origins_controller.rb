class CountryOfOriginsController < ApplicationController
  before_action :authenticate_user!
  autocomplete :pfeature, :name, :full => true
  #


  #cancancan
  load_and_authorize_resource
  # before_action :set_country_of_origin, only: [:show, :edit, :update, :destroy]
  #


  # cancancan..
  #load_and_authorize_resource :country_of_origin

  # GET /country_of_origins
  def index
    @q = @country_of_origins.search params[:q]
    @country_of_origins = @q.result.page(params[:page])
  end

  # GET /country_of_origins/1
  def show
    # https://stackoverflow.com/questions/49890851/rails-5-2-rest-api-active-storage-react-add-attachment-url-to-controller-r
    # not sure how to use this.
    # render json: @country_of_origin, include: [{avatar: {include: {documents: {include: {attachments: {include: {blob: {methods: :service_url} } } } } }}}]

    render json: @country_of_origin, methods: :avatar_url

  end

  # GET /country_of_origins/new
  def new
  end

  # GET /country_of_origins/1/edit
  def edit
  end

  # POST /country_of_origins
  def create
    respond_to do |format|
      if @country_of_origin.save
        format.html { redirect_to @country_of_origin, notice: t('success_create') }
        format.json { render :show, status: :created, location: @country_of_origin }
      else
        format.html { render :new }
        format.json { render json: @country_of_origin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /country_of_origins/1
  def update
    respond_to do |format|
      if @country_of_origin.update(country_of_origin_params)
        format.html { redirect_to @country_of_origin, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @country_of_origin }
      else
        format.html { render :edit }
        format.json { render json: @country_of_origin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /country_of_origins/1
  def destroy
    @country_of_origin.destroy
    respond_to do |format|
      format.html { redirect_to country_of_origins_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end


    
    def delete_document_attachment
        @document = ActiveStorage::Attachment.find(params[:id])
        @document.purge
        # redirect_to @current_page
        redirect_back(fallback_location: root_path)     
    end

    
  private

  # Only allow a trusted parameter "white list" through.
  def country_of_origin_params
    params.require(:country_of_origin).permit(:name, :fdate, :active_status, :sort_order, :avatar, documents: [])
  end
end
