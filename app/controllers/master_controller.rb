class MasterController < ApplicationController
    def master
      	@path = Pathmap.where(uripath: request.path).first
      	if @path.nil?
          raise ActionController::RoutingError.new('Not Found')
        end
        render :file => @path.filepath, :content_type => 'application/json'
    end
end
