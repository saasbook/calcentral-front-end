class MyDegreeProgressController < ApplicationController
	def get_undergraduate_requirements
		render :file => '/public/dummy/json/degree_progress_ugrd.json', :content_type => 'application/json'
	end

	def get_graduate_milestones
		render :file => '/public/dummy/json/degree_progress_grad.json', :content_type => 'application/json'
	end
end