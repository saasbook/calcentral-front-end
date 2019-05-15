require 'rails_helper'

RSpec.describe "dev/apis/show", type: :view do
  before(:each) do
    @api = assign(:api, Dev::Api.create!(
      :uripath => "Uripath",
      :filepath => "Filepath"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Uripath/)
    expect(rendered).to match(/Filepath/)
  end
end
