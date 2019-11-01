require 'rails_helper'

RSpec.describe "parts/edit", type: :view do
  before(:each) do
    @part = assign(:part, Part.create!(
      :Description => "MyString",
      :RptScrap => false,
      :PlantNumber => 1
    ))
  end

  it "renders the edit part form" do
    render

    assert_select "form[action=?][method=?]", part_path(@part), "post" do

      assert_select "input[name=?]", "part[Description]"

      assert_select "input[name=?]", "part[RptScrap]"

      assert_select "input[name=?]", "part[PlantNumber]"
    end
  end
end
