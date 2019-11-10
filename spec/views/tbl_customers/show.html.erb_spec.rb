require 'rails_helper'

RSpec.describe "tbl_customers/show", type: :view do
  before(:each) do
    @tbl_customer = assign(:tbl_customer, TblCustomer.create!(
      :CustName => "Cust Name",
      :CustLocation => "Cust Location",
      :Current => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Cust Name/)
    expect(rendered).to match(/Cust Location/)
    expect(rendered).to match(/false/)
  end
end
