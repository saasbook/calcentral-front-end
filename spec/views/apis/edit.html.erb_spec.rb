require 'rails_helper'

RSpec.describe "dev/apis/edit", type: :view do
  before(:each) do
    @api = assign(:api, Dev::Api.create!(
      :uripath => "MyString",
      :filepath => "MyString"
    ))
  end
end
