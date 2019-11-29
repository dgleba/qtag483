require 'rails_helper'

RSpec.describe "tbl_cust_dispoistions/show", type: :view do
  before(:each) do
    @tbl_cust_dispoistion = assign(:tbl_cust_dispoistion, TblCustDispoistion.create!(
      :Dispoisition => "Dispoisition"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Dispoisition/)
  end
end
