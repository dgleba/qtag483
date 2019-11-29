require 'rails_helper'

RSpec.describe "tbl_cust_dispoistions/new", type: :view do
  before(:each) do
    assign(:tbl_cust_dispoistion, TblCustDispoistion.new(
      :Dispoisition => "MyString"
    ))
  end

  it "renders new tbl_cust_dispoistion form" do
    render

    assert_select "form[action=?][method=?]", tbl_cust_dispoistions_path, "post" do

      assert_select "input[name=?]", "tbl_cust_dispoistion[Dispoisition]"
    end
  end
end
