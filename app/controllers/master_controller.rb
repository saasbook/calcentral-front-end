class MasterController < ApplicationController
	def master
    if request.fullpath == '/api/academics/degree_progress/ugrd'
      render :file => '/public/dummy/json/degree_progress_ugrd.json', :content_type => 'application/json'
    else
      render :file => '/public/dummy/json/degree_progress_grad.json', :content_type => 'application/json'
    end
    # render :file => Database.where(request_uri = request.fullpath).file_path, :content_type => 'application/json'
	end
end
