require 'rails_helper'

RSpec.describe "tbl_htpc_reasons/new", type: :view do
  before(:each) do
    assign(:tbl_htpc_reason, TblHtpcReason.new(
      :Reason => "MyString"
    ))
  end

  it "renders new tbl_htpc_reason form" do
    render

    assert_select "form[action=?][method=?]", tbl_htpc_reasons_path, "post" do

      assert_select "input[name=?]", "tbl_htpc_reason[Reason]"
    end
  end
end
