require 'rails_helper'

RSpec.describe "tbl_hold_tag_sos/edit", type: :view do
  before(:each) do
    @tbl_hold_tag_so = assign(:tbl_hold_tag_so, TblHoldTagSo.create!(
      :TagNumber => 1,
      :OKtoProcessBy => "MyString",
      :SortAmt => 1,
      :SortBy => "MyString",
      :ReworkAmt => 1,
      :ReworkBy => "MyString",
      :ScrapAmt => 1,
      :ScrapBy => "MyString",
      :UseAsIsAmt => 1,
      :UseAsIsBy => "MyString",
      :AuthorizedBy => "MyString"
    ))
  end

  it "renders the edit tbl_hold_tag_so form" do
    render

    assert_select "form[action=?][method=?]", tbl_hold_tag_so_path(@tbl_hold_tag_so), "post" do

      assert_select "input[name=?]", "tbl_hold_tag_so[TagNumber]"

      assert_select "input[name=?]", "tbl_hold_tag_so[OKtoProcessBy]"

      assert_select "input[name=?]", "tbl_hold_tag_so[SortAmt]"

      assert_select "input[name=?]", "tbl_hold_tag_so[SortBy]"

      assert_select "input[name=?]", "tbl_hold_tag_so[ReworkAmt]"

      assert_select "input[name=?]", "tbl_hold_tag_so[ReworkBy]"

      assert_select "input[name=?]", "tbl_hold_tag_so[ScrapAmt]"

      assert_select "input[name=?]", "tbl_hold_tag_so[ScrapBy]"

      assert_select "input[name=?]", "tbl_hold_tag_so[UseAsIsAmt]"

      assert_select "input[name=?]", "tbl_hold_tag_so[UseAsIsBy]"

      assert_select "input[name=?]", "tbl_hold_tag_so[AuthorizedBy]"
    end
  end
end
