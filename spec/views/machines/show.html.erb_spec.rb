require 'rails_helper'

RSpec.describe "machines/show", type: :view do
  before(:each) do
    @machine = assign(:machine, Machine.create!(
      :DeptID => 2,
      :MachineDesc => "Machine Desc",
      :PlantID => 3,
      :Stamp => "Stamp"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Machine Desc/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Stamp/)
  end
end
