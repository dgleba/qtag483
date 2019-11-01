require 'rails_helper'

RSpec.describe "operations/new", type: :view do
  before(:each) do
    assign(:operation, Operation.new(
      :Operation => "MyString",
      :OperationDecp => "MyString"
    ))
  end

  it "renders new operation form" do
    render

    assert_select "form[action=?][method=?]", operations_path, "post" do

      assert_select "input[name=?]", "operation[Operation]"

      assert_select "input[name=?]", "operation[OperationDecp]"
    end
  end
end
