require 'rails_helper'

RSpec.describe "operations/edit", type: :view do
  before(:each) do
    @operation = assign(:operation, Operation.create!(
      :Operation => "MyString",
      :OperationDecp => "MyString"
    ))
  end

  it "renders the edit operation form" do
    render

    assert_select "form[action=?][method=?]", operation_path(@operation), "post" do

      assert_select "input[name=?]", "operation[Operation]"

      assert_select "input[name=?]", "operation[OperationDecp]"
    end
  end
end
