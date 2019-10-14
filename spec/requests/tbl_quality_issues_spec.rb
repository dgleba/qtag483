require 'rails_helper'

RSpec.describe "TblQualityIssues", type: :request do
  describe "GET /tbl_quality_issues" do
    it "works! (now write some real specs)" do
      get tbl_quality_issues_path
      expect(response).to have_http_status(200)
    end
  end
end
