require "rails_helper"

RSpec.describe TblHoldTagSOsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/tbl_hold_tag_sos").to route_to("tbl_hold_tag_sos#index")
    end

    it "routes to #new" do
      expect(:get => "/tbl_hold_tag_sos/new").to route_to("tbl_hold_tag_sos#new")
    end

    it "routes to #show" do
      expect(:get => "/tbl_hold_tag_sos/1").to route_to("tbl_hold_tag_sos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tbl_hold_tag_sos/1/edit").to route_to("tbl_hold_tag_sos#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/tbl_hold_tag_sos").to route_to("tbl_hold_tag_sos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tbl_hold_tag_sos/1").to route_to("tbl_hold_tag_sos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tbl_hold_tag_sos/1").to route_to("tbl_hold_tag_sos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tbl_hold_tag_sos/1").to route_to("tbl_hold_tag_sos#destroy", :id => "1")
    end
  end
end
