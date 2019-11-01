require 'rails_helper'

RSpec.describe "depts/show", type: :view do
  before(:each) do
    @dept = assign(:dept, Dept.create!(
      :Department => "Department",
      :DepartmentState => "Department State"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Department/)
    expect(rendered).to match(/Department State/)
  end
end
