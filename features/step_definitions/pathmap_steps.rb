
Given /^the pathmap from (.*) to (.*) exists/ do |uripath, filepath|
    Pathmap.create({:uripath => uripath, :filepath => filepath})
end

When /^I access (.*) I should get a response corresponding to (.*)$/ do |uripath, filepath|
	visit uripath
	page.body.should == File.read(File.expand_path('../../..'+filepath, __FILE__))
end

Then /^I should see the JSON object corresponding to (.*)$/ do |filepath|
	page.should == JSON.parse(File.read(File.expand_path('../../..'+filepath, __FILE__)))
end