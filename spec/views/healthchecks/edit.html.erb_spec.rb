require 'rails_helper'

RSpec.describe "healthchecks/edit", type: :view do
  before(:each) do
    @healthcheck = assign(:healthcheck, Healthcheck.create!(
      :name => "MyString",
      :ip_address => "MyString",
      :username => "MyString",
      :user => nil,
      :comment => "MyString",
      :active_status => 1,
      :sort_order => 1
    ))
  end

  it "renders the edit healthcheck form" do
    render

    assert_select "form[action=?][method=?]", healthcheck_path(@healthcheck), "post" do

      assert_select "input[name=?]", "healthcheck[name]"

      assert_select "input[name=?]", "healthcheck[ip_address]"

      assert_select "input[name=?]", "healthcheck[username]"

      assert_select "input[name=?]", "healthcheck[user_id]"

      assert_select "input[name=?]", "healthcheck[comment]"

      assert_select "input[name=?]", "healthcheck[active_status]"

      assert_select "input[name=?]", "healthcheck[sort_order]"
    end
  end
end
