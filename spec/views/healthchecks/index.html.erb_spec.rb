require 'rails_helper'

RSpec.describe "healthchecks/index", type: :view do
  before(:each) do
    assign(:healthchecks, [
      Healthcheck.create!(
        :name => "Name",
        :ip_address => "Ip Address",
        :username => "Username",
        :user => nil,
        :comment => "Comment",
        :active_status => 2,
        :sort_order => 3
      ),
      Healthcheck.create!(
        :name => "Name",
        :ip_address => "Ip Address",
        :username => "Username",
        :user => nil,
        :comment => "Comment",
        :active_status => 2,
        :sort_order => 3
      )
    ])
  end

  it "renders a list of healthchecks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Ip Address".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
