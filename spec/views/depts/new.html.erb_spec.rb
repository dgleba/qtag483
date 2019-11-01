require 'rails_helper'

RSpec.describe "depts/new", type: :view do
  before(:each) do
    assign(:dept, Dept.new(
      :Department => "MyString",
      :DepartmentState => "MyString"
    ))
  end

  it "renders new dept form" do
    render

    assert_select "form[action=?][method=?]", depts_path, "post" do

      assert_select "input[name=?]", "dept[Department]"

      assert_select "input[name=?]", "dept[DepartmentState]"
    end
  end
end
