require 'rails_helper'

RSpec.describe "tbl_cust_dispoistions/edit", type: :view do
  before(:each) do
    @tbl_cust_dispoistion = assign(:tbl_cust_dispoistion, TblCustDispoistion.create!(
      :Dispoisition => "MyString"
    ))
  end

  it "renders the edit tbl_cust_dispoistion form" do
    render

    assert_select "form[action=?][method=?]", tbl_cust_dispoistion_path(@tbl_cust_dispoistion), "post" do

      assert_select "input[name=?]", "tbl_cust_dispoistion[Dispoisition]"
    end
  end
end
