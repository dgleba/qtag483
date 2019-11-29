require "rails_helper"

RSpec.describe TblCustDispoistionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/tbl_cust_dispoistions").to route_to("tbl_cust_dispoistions#index")
    end

    it "routes to #new" do
      expect(:get => "/tbl_cust_dispoistions/new").to route_to("tbl_cust_dispoistions#new")
    end

    it "routes to #show" do
      expect(:get => "/tbl_cust_dispoistions/1").to route_to("tbl_cust_dispoistions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tbl_cust_dispoistions/1/edit").to route_to("tbl_cust_dispoistions#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/tbl_cust_dispoistions").to route_to("tbl_cust_dispoistions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tbl_cust_dispoistions/1").to route_to("tbl_cust_dispoistions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tbl_cust_dispoistions/1").to route_to("tbl_cust_dispoistions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tbl_cust_dispoistions/1").to route_to("tbl_cust_dispoistions#destroy", :id => "1")
    end
  end
end
