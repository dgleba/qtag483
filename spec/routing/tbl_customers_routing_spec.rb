require "rails_helper"

RSpec.describe TblCustomersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/tbl_customers").to route_to("tbl_customers#index")
    end

    it "routes to #new" do
      expect(:get => "/tbl_customers/new").to route_to("tbl_customers#new")
    end

    it "routes to #show" do
      expect(:get => "/tbl_customers/1").to route_to("tbl_customers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tbl_customers/1/edit").to route_to("tbl_customers#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/tbl_customers").to route_to("tbl_customers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tbl_customers/1").to route_to("tbl_customers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tbl_customers/1").to route_to("tbl_customers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tbl_customers/1").to route_to("tbl_customers#destroy", :id => "1")
    end
  end
end
