require "rails_helper"

RSpec.describe TblHtpcReasonsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/tbl_htpc_reasons").to route_to("tbl_htpc_reasons#index")
    end

    it "routes to #new" do
      expect(:get => "/tbl_htpc_reasons/new").to route_to("tbl_htpc_reasons#new")
    end

    it "routes to #show" do
      expect(:get => "/tbl_htpc_reasons/1").to route_to("tbl_htpc_reasons#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tbl_htpc_reasons/1/edit").to route_to("tbl_htpc_reasons#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/tbl_htpc_reasons").to route_to("tbl_htpc_reasons#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tbl_htpc_reasons/1").to route_to("tbl_htpc_reasons#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tbl_htpc_reasons/1").to route_to("tbl_htpc_reasons#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tbl_htpc_reasons/1").to route_to("tbl_htpc_reasons#destroy", :id => "1")
    end
  end
end
