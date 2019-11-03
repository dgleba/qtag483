require "rails_helper"

RSpec.describe HealthchecksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/healthchecks").to route_to("healthchecks#index")
    end

    it "routes to #new" do
      expect(:get => "/healthchecks/new").to route_to("healthchecks#new")
    end

    it "routes to #show" do
      expect(:get => "/healthchecks/1").to route_to("healthchecks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/healthchecks/1/edit").to route_to("healthchecks#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/healthchecks").to route_to("healthchecks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/healthchecks/1").to route_to("healthchecks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/healthchecks/1").to route_to("healthchecks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/healthchecks/1").to route_to("healthchecks#destroy", :id => "1")
    end
  end
end
