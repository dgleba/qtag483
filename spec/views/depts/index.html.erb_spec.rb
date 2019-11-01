require 'rails_helper'

RSpec.describe "depts/index", type: :view do
  before(:each) do
    assign(:depts, [
      Dept.create!(
        :Department => "Department",
        :DepartmentState => "Department State"
      ),
      Dept.create!(
        :Department => "Department",
        :DepartmentState => "Department State"
      )
    ])
  end

  it "renders a list of depts" do
    render
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    assert_select "tr>td", :text => "Department State".to_s, :count => 2
  end
end
