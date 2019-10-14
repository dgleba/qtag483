require 'rails_helper'

RSpec.describe "tbl_quality_issues/index", type: :view do
  before(:each) do
    assign(:tbl_quality_issues, [
      TblQualityIssue.create!(
        :ProblemType => "Problem Type",
        :Year => 2,
        :PartID => "Part",
        :Issuedby => "Issuedby",
        :OpertionHd => "Opertion Hd",
        :OpertionTp => "Opertion Tp",
        :OpertionSp => "Opertion Sp",
        :OpertionQA => "Opertion Qa",
        :Reason => "Reason",
        :ReasonNote => "MyText",
        :Feature => "MyText",
        :Changed => "MyText",
        :Comment => "MyText",
        :SpecialInst => "MyText",
        :QualityAlert => "MyText",
        :QualityAlertMemo => "MyText",
        :Cost => 3,
        :NofPiecesQA => 4,
        :NofPiecesHT => 5,
        :MachineID => 6,
        :CustomerID => 7,
        :CustomerRefNum => "Customer Ref Num",
        :DispositionCustomer => "Disposition Customer",
        :DispositionStackpole => "Disposition Stackpole",
        :Picture => "",
        :Lengthofchange => 8.5,
        :Okdby => "Okdby",
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
        :FeatureNumber => "Feature Number",
        :CurrentMinSpec => 9.5,
        :CurrentMaxSpec => 10.5,
        :TPCMinSpec => 11.5,
        :TPCMaxSpec => 12.5,
        :OperationNumber => "Operation Number",
        :body => "MyText",
        :operation => "Operation",
        :qty => 13,
        :active_status => 14
      ),
      TblQualityIssue.create!(
        :ProblemType => "Problem Type",
        :Year => 2,
        :PartID => "Part",
        :Issuedby => "Issuedby",
        :OpertionHd => "Opertion Hd",
        :OpertionTp => "Opertion Tp",
        :OpertionSp => "Opertion Sp",
        :OpertionQA => "Opertion Qa",
        :Reason => "Reason",
        :ReasonNote => "MyText",
        :Feature => "MyText",
        :Changed => "MyText",
        :Comment => "MyText",
        :SpecialInst => "MyText",
        :QualityAlert => "MyText",
        :QualityAlertMemo => "MyText",
        :Cost => 3,
        :NofPiecesQA => 4,
        :NofPiecesHT => 5,
        :MachineID => 6,
        :CustomerID => 7,
        :CustomerRefNum => "Customer Ref Num",
        :DispositionCustomer => "Disposition Customer",
        :DispositionStackpole => "Disposition Stackpole",
        :Picture => "",
        :Lengthofchange => 8.5,
        :Okdby => "Okdby",
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
        :FeatureNumber => "Feature Number",
        :CurrentMinSpec => 9.5,
        :CurrentMaxSpec => 10.5,
        :TPCMinSpec => 11.5,
        :TPCMaxSpec => 12.5,
        :OperationNumber => "Operation Number",
        :body => "MyText",
        :operation => "Operation",
        :qty => 13,
        :active_status => 14
      )
    ])
  end

  it "renders a list of tbl_quality_issues" do
    render
    assert_select "tr>td", :text => "Problem Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Part".to_s, :count => 2
    assert_select "tr>td", :text => "Issuedby".to_s, :count => 2
    assert_select "tr>td", :text => "Opertion Hd".to_s, :count => 2
    assert_select "tr>td", :text => "Opertion Tp".to_s, :count => 2
    assert_select "tr>td", :text => "Opertion Sp".to_s, :count => 2
    assert_select "tr>td", :text => "Opertion Qa".to_s, :count => 2
    assert_select "tr>td", :text => "Reason".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => "Customer Ref Num".to_s, :count => 2
    assert_select "tr>td", :text => "Disposition Customer".to_s, :count => 2
    assert_select "tr>td", :text => "Disposition Stackpole".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 8.5.to_s, :count => 2
    assert_select "tr>td", :text => "Okdby".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Feature Number".to_s, :count => 2
    assert_select "tr>td", :text => 9.5.to_s, :count => 2
    assert_select "tr>td", :text => 10.5.to_s, :count => 2
    assert_select "tr>td", :text => 11.5.to_s, :count => 2
    assert_select "tr>td", :text => 12.5.to_s, :count => 2
    assert_select "tr>td", :text => "Operation Number".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Operation".to_s, :count => 2
    assert_select "tr>td", :text => 13.to_s, :count => 2
    assert_select "tr>td", :text => 14.to_s, :count => 2
  end
end
