require 'rails_helper'

RSpec.describe "tbl_customers/new", type: :view do
  before(:each) do
    assign(:tbl_customer, TblCustomer.new(
      :CustName => "MyString",
      :CustLocation => "MyString",
      :Current => false
    ))
  end

  it "renders new tbl_customer form" do
    render

    assert_select "form[action=?][method=?]", tbl_customers_path, "post" do

      assert_select "input[name=?]", "tbl_customer[CustName]"

      assert_select "input[name=?]", "tbl_customer[CustLocation]"

      assert_select "input[name=?]", "tbl_customer[Current]"
    end
  end
end
