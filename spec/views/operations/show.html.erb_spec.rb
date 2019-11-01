require 'rails_helper'

RSpec.describe "operations/show", type: :view do
  before(:each) do
    @operation = assign(:operation, Operation.create!(
      :Operation => "Operation",
      :OperationDecp => "Operation Decp"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Operation/)
    expect(rendered).to match(/Operation Decp/)
  end
end
