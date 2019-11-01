require 'rails_helper'

RSpec.describe "parts/index", type: :view do
  before(:each) do
    assign(:parts, [
      Part.create!(
        :Description => "Description",
        :RptScrap => false,
        :PlantNumber => 2
      ),
      Part.create!(
        :Description => "Description",
        :RptScrap => false,
        :PlantNumber => 2
      )
    ])
  end

  it "renders a list of parts" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
