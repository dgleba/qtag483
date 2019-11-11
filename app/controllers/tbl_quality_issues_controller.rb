class TblQualityIssuesController < ApplicationController
before_action :authenticate_user!

  #cancancan
  load_and_authorize_resource
  # before_action :set_tbl_quality_issue, only: [:show, :edit, :update, :destroy]

  # cancancan..
  #load_and_authorize_resource :tbl_quality_issue

  
  def holdtag_email
    #authorize! :manage, ???
    @tbl_quality_issue = TblQualityIssue.find(params[:id])
  
    HoldtagMailer.holdtag_email(@tbl_quality_issue).deliver
    flash[:notice] = "Email has been sent. [a-11-324]"
    redirect_to tbl_quality_issue_path(@tbl_quality_issue.id)
  end

  def delete_document_attachment
      @document = ActiveStorage::Attachment.find(params[:id])
      @document.purge
      # redirect_to @current_page
      redirect_back(fallback_location: root_path)     
  end


  # GET /tbl_quality_issues
  def index
    @q = @tbl_quality_issues.search params[:q]
    @tbl_quality_issues = @q.result.page(params[:page])
  end

  # GET /tbl_quality_issues/1
  def show
    respond_to do |format|
        format.html
        format.json { render json: @tbl_quality_issue, 
          methods: [ :picture01_url, :picture02_url, :documents_url, :documenturls, :documentremove ] }
    end    
  end

  # GET /tbl_quality_issues/new
  def new
  end

  # GET /tbl_quality_issues/1/edit
  def edit
  end

  # POST /tbl_quality_issues
  def create
    respond_to do |format|
      if @tbl_quality_issue.save
        format.html { redirect_to @tbl_quality_issue, notice: t('success_create') }
        format.json { render :show, status: :created, location: @tbl_quality_issue }
      else
        format.html { render :new }
        format.json { render json: @tbl_quality_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tbl_quality_issues/1
  def update
    respond_to do |format|
      if @tbl_quality_issue.update(tbl_quality_issue_params)
        format.html { redirect_to @tbl_quality_issue, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @tbl_quality_issue }
      else
        format.html { render :edit }
        format.json { render json: @tbl_quality_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tbl_quality_issues/1
  def destroy
    @tbl_quality_issue.destroy
    respond_to do |format|
      format.html { redirect_to tbl_quality_issues_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def tbl_quality_issue_params
    params.require(:tbl_quality_issue).permit(:ProblemType, :Year, :Date, :PartID, :Issuedby, :OpertionHd, :OpertionTp, :OpertionSp, 
    :OpertionQA, :Reason, :ReasonNote, :Feature, :Changed, :Comment, :SpecialInst, :QualityAlert, :QualityAlertMemo, :Cost, 
    :NofPiecesQA, :NofPiecesHT, :MachineID, :CustomerID, :CustomerRefNum, :DateIssued, :DispositionCustomer, :DispositionStackpole,
     :Picture, :Lengthofchange, :Okdby, :ModWritten, :SpecialInstWritten, :HoldTag, :TPCTag, :CertTag, :QualityATag, :Closed, 
     :Supplier_Issue, :ControlPlan, :LayeredAudit, :QualityMemo, :FeatureNumber, :CurrentMinSpec, :CurrentMaxSpec, :TPCMinSpec, 
     :TPCMaxSpec, :OperationNumber, :body, :operation, :qty, :active_status, :picture01, :picture02, documents: [])
  end
end
