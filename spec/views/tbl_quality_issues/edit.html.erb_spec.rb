require 'rails_helper'

RSpec.describe "tbl_quality_issues/edit", type: :view do
  before(:each) do
    @tbl_quality_issue = assign(:tbl_quality_issue, TblQualityIssue.create!(
      :ProblemType => "MyString",
      :Year => 1,
      :PartID => "MyString",
      :Issuedby => "MyString",
      :OpertionHd => "MyString",
      :OpertionTp => "MyString",
      :OpertionSp => "MyString",
      :OpertionQA => "MyString",
      :Reason => "MyString",
      :ReasonNote => "MyText",
      :Feature => "MyText",
      :Changed => "MyText",
      :Comment => "MyText",
      :SpecialInst => "MyText",
      :QualityAlert => "MyText",
      :QualityAlertMemo => "MyText",
      :Cost => 1,
      :NofPiecesQA => 1,
      :NofPiecesHT => 1,
      :MachineID => 1,
      :CustomerID => 1,
      :CustomerRefNum => "MyString",
      :DispositionCustomer => "MyString",
      :DispositionStackpole => "MyString",
      :Picture => "",
      :Lengthofchange => 1.5,
      :Okdby => "MyString",
      :ModWritten => false,
      :SpecialInstWritten => false,
      :HoldTag => false,
      :TPCTag => false,
      :CertTag => false,
      :QualityATag => false,
      :Closed => false,
      :Supplier_Issue => false,
      :ControlPlan => false,
      :LayeredAudit => false,
      :QualityMemo => false,
      :FeatureNumber => "MyString",
      :CurrentMinSpec => 1.5,
      :CurrentMaxSpec => 1.5,
      :TPCMinSpec => 1.5,
      :TPCMaxSpec => 1.5,
      :OperationNumber => "MyString",
      :body => "MyText",
      :operation => "MyString",
      :qty => 1,
      :active_status => 1
    ))
  end

  it "renders the edit tbl_quality_issue form" do
    render

    assert_select "form[action=?][method=?]", tbl_quality_issue_path(@tbl_quality_issue), "post" do

      assert_select "input[name=?]", "tbl_quality_issue[ProblemType]"

      assert_select "input[name=?]", "tbl_quality_issue[Year]"

      assert_select "input[name=?]", "tbl_quality_issue[PartID]"

      assert_select "input[name=?]", "tbl_quality_issue[Issuedby]"

      assert_select "input[name=?]", "tbl_quality_issue[OpertionHd]"

      assert_select "input[name=?]", "tbl_quality_issue[OpertionTp]"

      assert_select "input[name=?]", "tbl_quality_issue[OpertionSp]"

      assert_select "input[name=?]", "tbl_quality_issue[OpertionQA]"

      assert_select "input[name=?]", "tbl_quality_issue[Reason]"

      assert_select "textarea[name=?]", "tbl_quality_issue[ReasonNote]"

      assert_select "textarea[name=?]", "tbl_quality_issue[Feature]"

      assert_select "textarea[name=?]", "tbl_quality_issue[Changed]"

      assert_select "textarea[name=?]", "tbl_quality_issue[Comment]"

      assert_select "textarea[name=?]", "tbl_quality_issue[SpecialInst]"

      assert_select "textarea[name=?]", "tbl_quality_issue[QualityAlert]"

      assert_select "textarea[name=?]", "tbl_quality_issue[QualityAlertMemo]"

      assert_select "input[name=?]", "tbl_quality_issue[Cost]"

      assert_select "input[name=?]", "tbl_quality_issue[NofPiecesQA]"

      assert_select "input[name=?]", "tbl_quality_issue[NofPiecesHT]"

      assert_select "input[name=?]", "tbl_quality_issue[MachineID]"

      assert_select "input[name=?]", "tbl_quality_issue[CustomerID]"

      assert_select "input[name=?]", "tbl_quality_issue[CustomerRefNum]"

      assert_select "input[name=?]", "tbl_quality_issue[DispositionCustomer]"

      assert_select "input[name=?]", "tbl_quality_issue[DispositionStackpole]"

      assert_select "input[name=?]", "tbl_quality_issue[Picture]"

      assert_select "input[name=?]", "tbl_quality_issue[Lengthofchange]"

      assert_select "input[name=?]", "tbl_quality_issue[Okdby]"

      assert_select "input[name=?]", "tbl_quality_issue[ModWritten]"

      assert_select "input[name=?]", "tbl_quality_issue[SpecialInstWritten]"

      assert_select "input[name=?]", "tbl_quality_issue[HoldTag]"

      assert_select "input[name=?]", "tbl_quality_issue[TPCTag]"

      assert_select "input[name=?]", "tbl_quality_issue[CertTag]"

      assert_select "input[name=?]", "tbl_quality_issue[QualityATag]"

      assert_select "input[name=?]", "tbl_quality_issue[Closed]"

      assert_select "input[name=?]", "tbl_quality_issue[Supplier_Issue]"

      assert_select "input[name=?]", "tbl_quality_issue[ControlPlan]"

      assert_select "input[name=?]", "tbl_quality_issue[LayeredAudit]"

      assert_select "input[name=?]", "tbl_quality_issue[QualityMemo]"

      assert_select "input[name=?]", "tbl_quality_issue[FeatureNumber]"

      assert_select "input[name=?]", "tbl_quality_issue[CurrentMinSpec]"

      assert_select "input[name=?]", "tbl_quality_issue[CurrentMaxSpec]"

      assert_select "input[name=?]", "tbl_quality_issue[TPCMinSpec]"

      assert_select "input[name=?]", "tbl_quality_issue[TPCMaxSpec]"

      assert_select "input[name=?]", "tbl_quality_issue[OperationNumber]"

      assert_select "textarea[name=?]", "tbl_quality_issue[body]"

      assert_select "input[name=?]", "tbl_quality_issue[operation]"

      assert_select "input[name=?]", "tbl_quality_issue[qty]"

      assert_select "input[name=?]", "tbl_quality_issue[active_status]"
    end
  end
end
