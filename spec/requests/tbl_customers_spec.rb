require 'rails_helper'

RSpec.describe "TblCustomers", type: :request do
  describe "GET /tbl_customers" do
    it "works! (now write some real specs)" do
      get tbl_customers_path
      expect(response).to have_http_status(200)
    end
  end
end
