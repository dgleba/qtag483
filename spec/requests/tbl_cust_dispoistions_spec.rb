require 'rails_helper'

RSpec.describe "TblCustDispoistions", type: :request do
  describe "GET /tbl_cust_dispoistions" do
    it "works! (now write some real specs)" do
      get tbl_cust_dispoistions_path
      expect(response).to have_http_status(200)
    end
  end
end
