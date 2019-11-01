require 'rails_helper'

RSpec.describe "machines/new", type: :view do
  before(:each) do
    assign(:machine, Machine.new(
      :DeptID => 1,
      :MachineDesc => "MyString",
      :PlantID => 1,
      :Stamp => "MyString"
    ))
  end

  it "renders new machine form" do
    render

    assert_select "form[action=?][method=?]", machines_path, "post" do

      assert_select "input[name=?]", "machine[DeptID]"

      assert_select "input[name=?]", "machine[MachineDesc]"

      assert_select "input[name=?]", "machine[PlantID]"

      assert_select "input[name=?]", "machine[Stamp]"
    end
  end
end
