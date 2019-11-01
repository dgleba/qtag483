require 'rails_helper'

RSpec.describe "parts/new", type: :view do
  before(:each) do
    assign(:part, Part.new(
      :Description => "MyString",
      :RptScrap => false,
      :PlantNumber => 1
    ))
  end

  it "renders new part form" do
    render

    assert_select "form[action=?][method=?]", parts_path, "post" do

      assert_select "input[name=?]", "part[Description]"

      assert_select "input[name=?]", "part[RptScrap]"

      assert_select "input[name=?]", "part[PlantNumber]"
    end
  end
end
