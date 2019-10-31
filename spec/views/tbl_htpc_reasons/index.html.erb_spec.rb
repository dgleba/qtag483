require 'rails_helper'

RSpec.describe "tbl_htpc_reasons/index", type: :view do
  before(:each) do
    assign(:tbl_htpc_reasons, [
      TblHtpcReason.create!(
        :Reason => "Reason"
      ),
      TblHtpcReason.create!(
        :Reason => "Reason"
      )
    ])
  end

  it "renders a list of tbl_htpc_reasons" do
    render
    assert_select "tr>td", :text => "Reason".to_s, :count => 2
  end
end
