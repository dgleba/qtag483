require 'rails_helper'

RSpec.describe "TblHtpcReasons", type: :request do
  describe "GET /tbl_htpc_reasons" do
    it "works! (now write some real specs)" do
      get tbl_htpc_reasons_path
      expect(response).to have_http_status(200)
    end
  end
end
