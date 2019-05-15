require 'rails_helper'

RSpec.describe "dev/apis/new", type: :view do
  before(:each) do
    assign(:api, Dev::Api.new(
      :uripath => "MyString",
      :filepath => "MyString"
    ))
  end
end
