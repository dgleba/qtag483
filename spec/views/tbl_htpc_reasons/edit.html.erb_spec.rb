require 'rails_helper'

RSpec.describe "tbl_htpc_reasons/edit", type: :view do
  before(:each) do
    @tbl_htpc_reason = assign(:tbl_htpc_reason, TblHtpcReason.create!(
      :Reason => "MyString"
    ))
  end

  it "renders the edit tbl_htpc_reason form" do
    render

    assert_select "form[action=?][method=?]", tbl_htpc_reason_path(@tbl_htpc_reason), "post" do

      assert_select "input[name=?]", "tbl_htpc_reason[Reason]"
    end
  end
end
