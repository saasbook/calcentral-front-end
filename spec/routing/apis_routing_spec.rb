require "rails_helper"

RSpec.describe Dev::ApisController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "dev/apis").to route_to("dev/apis#index")
    end

    it "routes to #new" do
      expect(:get => "dev/apis/new").to route_to("dev/apis#new")
    end

    it "routes to #show" do
      expect(:get => "dev/apis/1").to route_to("dev/apis#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "dev/apis/1/edit").to route_to("dev/apis#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "dev/apis").to route_to("dev/apis#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "dev/apis/1").to route_to("dev/apis#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "dev/apis/1").to route_to("dev/apis#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "dev/apis/1").to route_to("dev/apis#destroy", :id => "1")
    end

  end
end
