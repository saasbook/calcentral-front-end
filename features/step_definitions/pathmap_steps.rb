
Given /^the pathmap from (.*) to (.*) exists/ do |uripath, filepath|
    Pathmap.create({:uripath => uripath, :filepath => filepath})
end

When /^I access (.*) I should get a response corresponding to (.*)$/ do |uripath, filepath|
    visit uripath
    page.body.should == File.read(File.expand_path('../../..'+filepath, __FILE__))
end

When /^I access the (.*) page$/ do |uripath|
    visit uripath
end

When /^I POST to the (.*) page$/ do |uripath|
    Capybara.current_session.driver.submit :post, uripath, nil
end

Then /^I should get a response corresponding to (.*)$/ do |filepath|
    page.body.should == File.read(File.expand_path('../../..'+filepath, __FILE__))
end

Then "I should get a {int} response" do |int|
  page.status_code.should be int
end
