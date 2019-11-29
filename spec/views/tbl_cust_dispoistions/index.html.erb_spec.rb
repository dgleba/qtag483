require 'rails_helper'

RSpec.describe "tbl_cust_dispoistions/index", type: :view do
  before(:each) do
    assign(:tbl_cust_dispoistions, [
      TblCustDispoistion.create!(
        :Dispoisition => "Dispoisition"
      ),
      TblCustDispoistion.create!(
        :Dispoisition => "Dispoisition"
      )
    ])
  end

  it "renders a list of tbl_cust_dispoistions" do
    render
    assert_select "tr>td", :text => "Dispoisition".to_s, :count => 2
  end
end
