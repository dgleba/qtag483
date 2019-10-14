require "rails_helper"

RSpec.describe TblQualityIssuesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/tbl_quality_issues").to route_to("tbl_quality_issues#index")
    end

    it "routes to #new" do
      expect(:get => "/tbl_quality_issues/new").to route_to("tbl_quality_issues#new")
    end

    it "routes to #show" do
      expect(:get => "/tbl_quality_issues/1").to route_to("tbl_quality_issues#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tbl_quality_issues/1/edit").to route_to("tbl_quality_issues#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/tbl_quality_issues").to route_to("tbl_quality_issues#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tbl_quality_issues/1").to route_to("tbl_quality_issues#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tbl_quality_issues/1").to route_to("tbl_quality_issues#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tbl_quality_issues/1").to route_to("tbl_quality_issues#destroy", :id => "1")
    end
  end
end
