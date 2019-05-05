require 'rails_helper'

RSpec.describe "apis/new", type: :view do
  before(:each) do
    assign(:api, Api.new(
      :uripath => "MyString",
      :filepath => "MyString"
    ))
  end

  it "renders new api form" do
    render

    assert_select "form[action=?][method=?]", apis_path, "post" do

      assert_select "input#api_uripath[name=?]", "api[uripath]"

      assert_select "input#api_filepath[name=?]", "api[filepath]"
    end
  end
end
