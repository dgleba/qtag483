require 'rails_helper'

RSpec.describe "tbl_quality_issues/show", type: :view do
  before(:each) do
    @tbl_quality_issue = assign(:tbl_quality_issue, TblQualityIssue.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Problem Type/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Part/)
    expect(rendered).to match(/Issuedby/)
    expect(rendered).to match(/Opertion Hd/)
    expect(rendered).to match(/Opertion Tp/)
    expect(rendered).to match(/Opertion Sp/)
    expect(rendered).to match(/Opertion Qa/)
    expect(rendered).to match(/Reason/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/Customer Ref Num/)
    expect(rendered).to match(/Disposition Customer/)
    expect(rendered).to match(/Disposition Stackpole/)
    expect(rendered).to match(//)
    expect(rendered).to match(/8.5/)
    expect(rendered).to match(/Okdby/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Feature Number/)
    expect(rendered).to match(/9.5/)
    expect(rendered).to match(/10.5/)
    expect(rendered).to match(/11.5/)
    expect(rendered).to match(/12.5/)
    expect(rendered).to match(/Operation Number/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Operation/)
    expect(rendered).to match(/13/)
    expect(rendered).to match(/14/)
  end
end
