require 'rails_helper'

RSpec.describe "tbl_hold_tag_sos/show", type: :view do
  before(:each) do
    @tbl_hold_tag_so = assign(:tbl_hold_tag_so, TblHoldTagSo.create!(
      :TagNumber => 2,
      :OKtoProcessBy => "O Kto Process By",
      :SortAmt => 3,
      :SortBy => "Sort By",
      :ReworkAmt => 4,
      :ReworkBy => "Rework By",
      :ScrapAmt => 5,
      :ScrapBy => "Scrap By",
      :UseAsIsAmt => 6,
      :UseAsIsBy => "Use As Is By",
      :AuthorizedBy => "Authorized By"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/O Kto Process By/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Sort By/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Rework By/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Scrap By/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/Use As Is By/)
    expect(rendered).to match(/Authorized By/)
  end
end
