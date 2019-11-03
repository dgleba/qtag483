require 'rails_helper'

RSpec.describe "healthchecks/show", type: :view do
  before(:each) do
    @healthcheck = assign(:healthcheck, Healthcheck.create!(
      :name => "Name",
      :ip_address => "Ip Address",
      :username => "Username",
      :user => nil,
      :comment => "Comment",
      :active_status => 2,
      :sort_order => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Ip Address/)
    expect(rendered).to match(/Username/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Comment/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
