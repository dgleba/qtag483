require 'rails_helper'

RSpec.describe "tbl_customers/edit", type: :view do
  before(:each) do
    @tbl_customer = assign(:tbl_customer, TblCustomer.create!(
      :CustName => "MyString",
      :CustLocation => "MyString",
      :Current => false
    ))
  end

  it "renders the edit tbl_customer form" do
    render

    assert_select "form[action=?][method=?]", tbl_customer_path(@tbl_customer), "post" do

      assert_select "input[name=?]", "tbl_customer[CustName]"

      assert_select "input[name=?]", "tbl_customer[CustLocation]"

      assert_select "input[name=?]", "tbl_customer[Current]"
    end
  end
end
