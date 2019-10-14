require 'rails_helper'

RSpec.describe "tbl_hold_tag_sos/index", type: :view do
  before(:each) do
    assign(:tbl_hold_tag_sos, [
      TblHoldTagSo.create!(
        :TagNumber => 2,
        :OKtoProcessBy => "O Kto Process By",
        :SortAmt => 3,
        :SortBy => "Sort By",
        :ReworkAmt => 4,
        :ReworkBy => "Rework By",
        :ScrapAmt => 5,
        :ScrapBy => "Scrap By",
        :UseAsIsAmt => 6,
        :UseAsIsBy => "Use As Is By",
        :AuthorizedBy => "Authorized By"
      ),
      TblHoldTagSo.create!(
        :TagNumber => 2,
        :OKtoProcessBy => "O Kto Process By",
        :SortAmt => 3,
        :SortBy => "Sort By",
        :ReworkAmt => 4,
        :ReworkBy => "Rework By",
        :ScrapAmt => 5,
        :ScrapBy => "Scrap By",
        :UseAsIsAmt => 6,
        :UseAsIsBy => "Use As Is By",
        :AuthorizedBy => "Authorized By"
      )
    ])
  end

  it "renders a list of tbl_hold_tag_sos" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "O Kto Process By".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Sort By".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Rework By".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Scrap By".to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "Use As Is By".to_s, :count => 2
    assert_select "tr>td", :text => "Authorized By".to_s, :count => 2
  end
end
