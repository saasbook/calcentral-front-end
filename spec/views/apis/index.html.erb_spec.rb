require 'rails_helper'

RSpec.describe "apis/index", type: :view do
  before(:each) do
    assign(:apis, [
      Api.create!(
        :uripath => "Uripath",
        :filepath => "Filepath"
      ),
      Api.create!(
        :uripath => "Uripath",
        :filepath => "Filepath"
      )
    ])
  end

  it "renders a list of apis" do
    render
    assert_select "tr>td", :text => "Uripath".to_s, :count => 2
    assert_select "tr>td", :text => "Filepath".to_s, :count => 2
  end
end
