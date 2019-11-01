require 'rails_helper'

RSpec.describe "operations/index", type: :view do
  before(:each) do
    assign(:operations, [
      Operation.create!(
        :Operation => "Operation",
        :OperationDecp => "Operation Decp"
      ),
      Operation.create!(
        :Operation => "Operation",
        :OperationDecp => "Operation Decp"
      )
    ])
  end

  it "renders a list of operations" do
    render
    assert_select "tr>td", :text => "Operation".to_s, :count => 2
    assert_select "tr>td", :text => "Operation Decp".to_s, :count => 2
  end
end
