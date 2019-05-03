require 'rails_helper'

RSpec.describe "apis/edit", type: :view do
  before(:each) do
    @api = assign(:api, Api.create!(
      :uripath => "MyString",
      :filepath => "MyString"
    ))
  end

  it "renders the edit api form" do
    render

    assert_select "form[action=?][method=?]", api_path(@api), "post" do

      assert_select "input#api_uripath[name=?]", "api[uripath]"

      assert_select "input#api_filepath[name=?]", "api[filepath]"
    end
  end
end
