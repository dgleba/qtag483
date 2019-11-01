require 'rails_helper'

RSpec.describe "machines/index", type: :view do
  before(:each) do
    assign(:machines, [
      Machine.create!(
        :DeptID => 2,
        :MachineDesc => "Machine Desc",
        :PlantID => 3,
        :Stamp => "Stamp"
      ),
      Machine.create!(
        :DeptID => 2,
        :MachineDesc => "Machine Desc",
        :PlantID => 3,
        :Stamp => "Stamp"
      )
    ])
  end

  it "renders a list of machines" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Machine Desc".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Stamp".to_s, :count => 2
  end
end
