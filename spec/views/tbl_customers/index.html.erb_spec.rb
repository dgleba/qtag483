require 'rails_helper'

RSpec.describe "tbl_customers/index", type: :view do
  before(:each) do
    assign(:tbl_customers, [
      TblCustomer.create!(
        :CustName => "Cust Name",
        :CustLocation => "Cust Location",
        :Current => false
      ),
      TblCustomer.create!(
        :CustName => "Cust Name",
        :CustLocation => "Cust Location",
        :Current => false
      )
    ])
  end

  it "renders a list of tbl_customers" do
    render
    assert_select "tr>td", :text => "Cust Name".to_s, :count => 2
    assert_select "tr>td", :text => "Cust Location".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
