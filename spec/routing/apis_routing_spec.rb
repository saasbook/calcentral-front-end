require "rails_helper"

RSpec.describe ApisController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/apis").to route_to("apis#index")
    end

    it "routes to #new" do
      expect(:get => "/apis/new").to route_to("apis#new")
    end

    it "routes to #show" do
      expect(:get => "/apis/1").to route_to("apis#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/apis/1/edit").to route_to("apis#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/apis").to route_to("apis#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/apis/1").to route_to("apis#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/apis/1").to route_to("apis#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/apis/1").to route_to("apis#destroy", :id => "1")
    end

  end
end
