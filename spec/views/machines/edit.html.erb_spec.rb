require 'rails_helper'

RSpec.describe "machines/edit", type: :view do
  before(:each) do
    @machine = assign(:machine, Machine.create!(
      :DeptID => 1,
      :MachineDesc => "MyString",
      :PlantID => 1,
      :Stamp => "MyString"
    ))
  end

  it "renders the edit machine form" do
    render

    assert_select "form[action=?][method=?]", machine_path(@machine), "post" do

      assert_select "input[name=?]", "machine[DeptID]"

      assert_select "input[name=?]", "machine[MachineDesc]"

      assert_select "input[name=?]", "machine[PlantID]"

      assert_select "input[name=?]", "machine[Stamp]"
    end
  end
end
