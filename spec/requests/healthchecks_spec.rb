require 'rails_helper'

RSpec.describe "Healthchecks", type: :request do
  describe "GET /healthchecks" do
    it "works! (now write some real specs)" do
      get healthchecks_path
      expect(response).to have_http_status(200)
    end
  end
end
