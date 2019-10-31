require 'rails_helper'

RSpec.describe "tbl_htpc_reasons/show", type: :view do
  before(:each) do
    @tbl_htpc_reason = assign(:tbl_htpc_reason, TblHtpcReason.create!(
      :Reason => "Reason"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Reason/)
  end
end
